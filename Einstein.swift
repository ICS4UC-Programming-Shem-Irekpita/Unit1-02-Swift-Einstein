import Foundation

/**
 * Calculates the energy (in Joules) released when an object's mass (in kg)
 * is converted to energy using Albert Einstein's equation E = mc^2, given
 * the speed of light c = 2.998 x 10^8 m/s. Prompts the user for mass input
 * and outputs the resulting energy in scientific notation rounded to three
 * decimal places with crash-proof input handling.
 *
 * @author  Shem Irekpita
 * @version 1.0
 * @since   2026-09-20
 */

print("Please enter the mass of the object in kilograms: ", terminator: "")

if let input = readLine(), let mass = Double(input) {
    if mass < 0 {
        print("Error: Mass cannot be negative.")
    } else {
        let speedOfLight = 2.998e8
        let energy = mass * speedOfLight * speedOfLight
        let formattedEnergy = String(format: "%.3e", energy)
        print("The energy released is: \(formattedEnergy) Joules")
    }
} else {
    print("Error: Please enter a valid numeric value for the mass.")
}