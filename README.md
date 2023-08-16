# Clash mOISC

Bachelor thesis Jakob Groß

Implementation of a Multi One Instruction Set Computer(mOISC) in the hardware description language Clash.

## Reference
To build the reference implementation run the `linux_install_apt.sh` script after loading the git-submodule.

## Clash Build
In the folder `ClashProject`, every Block has its associated `build.sh` script to build the block.

## Clash Test
In the folder `ClashProject` run `stack test`.

## Clash Simulation
In the folder `ClashProject` run `stack run clashi -- -isrc`. Then load the desired file using `:l src/BlockName`.

## Vivado
In the folder `Vivado` a Vivado project for each different IP-Block and the full mOISC implementations is provided.

## Analysis Results
To replicate Vivado analysis results run `Synthesis` in Vivado.
Then under `Reports` -> `Synth Design`-> `Utilization` the registers and LUTs are shown.
For power analysis after synthesis, the `report power` function is run and under the tab `power`, the estimated dynamic On-Chip power is used.

## Memory file conversion
To convert a memory file from a `.coe` file to a `.mif` or `.bin` file, run `python3 coe2mif.py <input.coe> <output.mif>`.




## Copyright

Copyright 2022 Jakob Groß

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS “AS IS” AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.