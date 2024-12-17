scalaVersion := "2.12.12"

scalacOptions ++= Seq(
  "-feature",
  "-language:reflectiveCalls",
)

addCompilerPlugin("edu.berkeley.cs" % "chisel3-plugin_2.12.12" % "3.5.3")
libraryDependencies ++= Seq(
  "edu.berkeley.cs" %% "chisel3" % "3.5.6",
  "edu.berkeley.cs" %% "chiseltest" % "0.5.3",
)
resolvers ++= Seq(
  Resolver.sonatypeRepo("snapshots"),
  Resolver.sonatypeRepo("releases"),
  Resolver.mavenLocal)
