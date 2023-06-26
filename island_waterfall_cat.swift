import UIKit

// MARK: - App Delegate Declaration
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    // MARK: - App Lifecycle
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        setupUI()
        return true
    }

    // MARK: - UI Setup
    func setupUI() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(rootViewController: UrbanCanvasViewController())
        window?.makeKeyAndVisible()
    }
}

// MARK: - UrbanCanvasViewController
class UrbanCanvasViewController: UIViewController {
    // MARK: - Constants
    let canvasView = CanvasView()
    let brushSizeSlider = UISlider()
    let brushColorSegment = UISegmentedControl()

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpViews()
    }

    // MARK: - Set Up Views
    func setUpViews() {
        // Set up navbar
        navigationController?.isNavigationBarHidden = false
        navigationItem.title = "Urban Canvas"

        // Set up brush size slider
        brushSizeSlider.minimumValue = 1
        brushSizeSlider.maximumValue = 7
        brushSizeSlider.addTarget(self, action: #selector(changeBrushSize), for: .valueChanged)

        // Set up brush color segment
        let colorValues: [UIColor] = [.black, .white, .red, .green, .blue]
        colorValues.enumerated().forEach { (index, color) in
            brushColorSegment.insertSegment(withTitle: "", at: index, animated: false)
            (brushColorSegment.subviews[index] as? UIButton)?.backgroundColor = color
        }
        brushColorSegment.addTarget(self, action: #selector(changeBrushColor), for: .valueChanged)

        // Set up canvas
        canvasView.clipsToBounds = true
        canvasView.backgroundColor = .white

        // Set up view hierarchy
        view.addSubview(brushSizeSlider)
        view.addSubview(brushColorSegment)
        view.addSubview(canvasView)

        // Set up autolayout
        brushSizeSlider.translatesAutoresizingMaskIntoConstraints = false
        brushSizeSlider.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        brushSizeSlider.heightAnchor.constraint(equalToConstant: 30).isActive = true
        brushSizeSlider.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        brushSizeSlider.widthAnchor.constraint(equalToConstant: view.frame.width - 100).isActive = true

        brushColorSegment.translatesAutoresizingMaskIntoConstraints = false
        brushColorSegment.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        brushColorSegment.heightAnchor.constraint(equalToConstant: 30).isActive = true
        brushColorSegment.topAnchor.constraint(equalTo: brushSizeSlider.bottomAnchor, constant: 20).isActive = true
        brushColorSegment.widthAnchor.constraint(equalToConstant: view.frame.width - 100).isActive = true

        canvasView.translatesAutoresizingMaskIntoConstraints = false
        canvasView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        canvasView.topAnchor.constraint(equalTo: brushColorSegment.bottomAnchor, constant: 20).isActive = true
        canvasView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        canvasView.heightAnchor.constraint(equalToConstant: view.frame.height - 240).isActive = true
    }

    // MARK: - Brush Size Change
    @objc func changeBrushSize(slider: UISlider) {
        canvasView.brushWidth = CGFloat(slider.value)
    }

    // MARK: - Brush Color Change
    @objc func changeBrushColor(segment: UISegmentedControl) {
        let colorValues: [UIColor] = [.black, .white, .red, .green, .blue]
        canvasView.brushColor = colorValues[segment.selectedSegmentIndex]
    }
}

// MARK: - Canvas View
class CanvasView: UIView {
    // MARK: - Properties
    var brushWidth: CGFloat = 5
    var brushColor: UIColor = .black

    private var lastPoint: CGPoint?

    // MARK: - Draw Override
    override func draw(_ rect: CGRect) {
        if let path = drawPath {
            brushColor.setStroke()
            path.lineWidth = brushWidth
            path.stroke()
        }
    }

    // MARK: - Path Logic
    private var drawPath: UIBezierPath?
    private var pathArray: [UIBezierPath] = []

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            lastPoint = touch.location(in: self)
        }
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let currentPoint = touch.location(in: self)
            drawPath = UIBezierPath()
            drawPath?.move(to: lastPoint ?? CGPoint.zero)
            drawPath?.addLine(to: currentPoint)
            lastPoint = currentPoint

            setNeedsDisplay()
        }
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        pathArray.append(drawPath ?? UIBezierPath())
    }
}