transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {/home/gabrielzezze/Desktop/mips-project/soma_constante.vhd}
vcom -2008 -work work {/home/gabrielzezze/Desktop/mips-project/registrador_generico.vhd}
vcom -2008 -work work {/home/gabrielzezze/Desktop/mips-project/rom_mips.vhd}
vcom -2008 -work work {/home/gabrielzezze/Desktop/mips-project/banco_registradores.vhd}
vcom -2008 -work work {/home/gabrielzezze/Desktop/mips-project/mux_generico_2x1.vhd}
vcom -2008 -work work {/home/gabrielzezze/Desktop/mips-project/unidade_controle.vhd}
vcom -2008 -work work {/home/gabrielzezze/Desktop/mips-project/ula.vhd}
vcom -2008 -work work {/home/gabrielzezze/Desktop/mips-project/fluxo_dados.vhd}
vcom -2008 -work work {/home/gabrielzezze/Desktop/mips-project/mips_project.vhd}

