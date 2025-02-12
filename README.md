# libdprt

This is the main libdprt package, which provides (real-time) data pipelines for Liverpool Telescope instruments.
Unusually, this repository contains very little actual code, just top-level Makefile(s). The actual code is held in a series of directories, which are git 'submodules'.


# Installation

The repository should be installed inside the libdprt directory in an LT development environment.

# Prerequisites

- LT Development environment
- lt_filenames (http://github.com/LivTel/lt_filenames) Filename support for the data pipeline.

# Submodules

- ccd_dprt (http://github.com/LivTel/ccd_dprt) The main data pipeline codebase.
- jni_general (http://github.com/LivTel/libdprt-jni_general) Generic JNI 'glue' routines.
- object  (http://github.com/LivTel/libdprt-object) Object detection code , used by the data pipeline to compute seeing values.
- ccs (http://github.com/LivTel/libdprt-ccs) JNI 'glue' (interface layer) between ngat.dprt.ccs.DpRtLibrary (in the dprt repository) and the RATCam build of libdprt/ccd_dprt.
- frodospec (http://github.com/LivTel/libdprt-frodospec) JNI 'glue' (interface layer) between ngat.dprt.frodospec.DpRtLibrary (in the dprt repository) and the Frodospec build of libdprt/ccd_dprt.
- ftspec (http://github.com/LivTel/libdprt-ftspec)  JNI 'glue' (interface layer) between ngat.dprt.ftspec.DpRtLibrary (in the dprt repository) and the FTSpec build of libdprt/ccd_dprt.
- grope (http://github.com/LivTel/libdprt-grope) JNI 'glue' (interface layer) between ngat.dprt.grope.DpRtLibrary (in the dprt repository) and the Ringo build of libdprt/ccd_dprt.
- ioi (http://github.com/LivTel/libdprt-ioi) JNI 'glue' (interface layer) between ngat.dprt.ioi.DpRtLibrary (in the dprt repository) and the IO:I build of libdprt/ccd_dprt.
- loci (http://github.com/LivTel/libdprt-loci) JNI 'glue' (interface layer) between ngat.dprt.loci.DpRtLibrary (in the dprt repository) and the LOCI build of libdprt/ccd_dprt.
- o (http://github.com/LivTel/libdprt-o) JNI 'glue' (interface layer) between ngat.dprt.o.DpRtLibrary (in the dprt repository) and the IO:O build of libdprt/ccd_dprt.
- scs (http://github.com/LivTel/libdprt-scs) JNI 'glue' (interface layer) between ngat.dprt.scs.DpRtLibrary (in the dprt repository) and the Meaburn Spectrograph build of libdprt/ccd_dprt.
- sprat (http://github.com/LivTel/libdprt-sprat) JNI 'glue' (interface layer) between ngat.dprt.sprat.DpRtLibrary (in the dprt repository) and the Sprat build of libdprt/ccd_dprt.
- supircam (http://github.com/LivTel/libdprt-supircam) JNI 'glue' (interface layer) between ngat.dprt.supircam.DpRtLibrary (in the dprt repository) and the SupIRCam build of libdprt/ccd_dprt.
