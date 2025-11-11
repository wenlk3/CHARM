# Contributing to CHARM

We welcome contributions to CHARM! This document provides guidelines for contributing to the project.

## How to Contribute

### Reporting Bugs

If you find a bug, please open an issue with:
- A clear description of the bug
- Steps to reproduce
- Expected behavior vs. actual behavior
- Your environment (OS, Python version, PyTorch version)

### Suggesting Enhancements

We welcome suggestions for new features or improvements. Please open an issue with:
- A clear description of the enhancement
- Use cases and benefits
- Any implementation ideas you have

### Pull Requests

1. Fork the repository
2. Create a new branch (`git checkout -b feature/your-feature-name`)
3. Make your changes
4. Run tests to ensure everything works
5. Commit your changes (`git commit -m 'Add some feature'`)
6. Push to the branch (`git push origin feature/your-feature-name`)
7. Open a Pull Request

#### Pull Request Guidelines

- Follow the existing code style
- Add tests for new features
- Update documentation as needed
- Ensure all tests pass
- Keep commits atomic and well-described

## Development Setup

```bash
# Clone your fork
git clone https://github.com/YOUR_USERNAME/CHARM.git
cd CHARM

# Create a virtual environment
conda create -n charm-dev python=3.8
conda activate charm-dev

# Install dependencies
pip install -r requirements.txt

# Install development dependencies
pip install pytest black flake8 isort
```

## Code Style

We follow PEP 8 style guidelines. Please format your code using:

```bash
# Format with black
black .

# Sort imports with isort
isort .

# Check with flake8
flake8 .
```

## Testing

Before submitting a PR, make sure all tests pass:

```bash
pytest tests/
```

## Documentation

- Update docstrings for any new or modified functions
- Update README.md if you add new features
- Add examples for new functionality

## Questions?

Feel free to open an issue for any questions or discussions!

Thank you for contributing to CHARM! 🎉
