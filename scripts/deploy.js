const hre = require("hardhat");

async function main() {
  const Voting = await hre.ethers.getContractFactory("Voting");
  const voting = await Voting.deploy();

  await voting.waitForDeployment();
  console.log("Voting deployed to:", voting.target); // Use .target for ethers v6
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
