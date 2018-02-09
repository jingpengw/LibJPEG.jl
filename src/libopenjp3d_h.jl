# Automatically generated using Clang.jl wrap_c, version 0.0.0

using Compat

const UNIX = 1
const LINUX = 1

# Skipping MacroDefinition: OPJ_API __attribute__ ( ( visibility ( "default" ) ) )
# Skipping MacroDefinition: OPJ_LOCAL __attribute__ ( ( visibility ( "hidden" ) ) )

const TRUE = 1
const FALSE = 0
const MAX_SLICES = 300
const MAX_PATH = 260
const J3D_MAXRLVLS = 32
const J3D_MAXBANDS = 7J3D_MAXRLVLS + 1
const TINY = 1.0e-20
const J2K_CFMT = 0
const J3D_CFMT = 1
const LSE_CFMT = 2
const BIN_DFMT = 0
const PGX_DFMT = 1
const IMG_DFMT = 2

# Skipping MacroDefinition: opj_common_fields opj_event_mgr_t * event_mgr ; /**< pointer to the event manager */ void * client_data ; /**< Available for use by application */ bool is_decompressor ; /**< So common code can tell which is which */ OPJ_CODEC_FORMAT codec_format ; /**< selected codec */ OPJ_ENTROPY_CODING encoding_format ; /**< selected entropy coding */ OPJ_TRANSFORM transform_format ; /**< selected transform */ void * j3d_handle

const OPJ_STREAM_READ = 0x0001
const OPJ_STREAM_WRITE = 0x0002

# begin enum PROG_ORDER
const PROG_ORDER = Cint
const PROG_UNKNOWN = (Int32)(-1)
const LRCP = (Int32)(0)
const RLCP = (Int32)(1)
const RPCL = (Int32)(2)
const PCRL = (Int32)(3)
const CPRL = (Int32)(4)
# end enum PROG_ORDER

const OPJ_PROG_ORDER = Void

# begin enum COLOR_SPACE
const COLOR_SPACE = Cint
const CLRSPC_UNKNOWN = (Int32)(-1)
const CLRSPC_SRGB = (Int32)(1)
const CLRSPC_GRAY = (Int32)(2)
const CLRSPC_SYCC = (Int32)(3)
# end enum COLOR_SPACE

const OPJ_COLOR_SPACE = Void

# begin enum CODEC_FORMAT
const CODEC_FORMAT = Cint
const CODEC_UNKNOWN = (Int32)(-1)
const CODEC_J2K = (Int32)(0)
const CODEC_J3D = (Int32)(1)
# end enum CODEC_FORMAT

const OPJ_CODEC_FORMAT = Void

# begin enum ENTROPY_CODING
const ENTROPY_CODING = Cint
const ENCOD_UNKNOWN = (Int32)(-1)
const ENCOD_2EB = (Int32)(0)
const ENCOD_3EB = (Int32)(1)
const ENCOD_2GR = (Int32)(2)
const ENCOD_3GR = (Int32)(3)
# end enum ENTROPY_CODING

const OPJ_ENTROPY_CODING = Void

# begin enum TRANSFORM
const TRANSFORM = Cint
const TRF_UNKNOWN = (Int32)(-1)
const TRF_2D_DWT = (Int32)(0)
const TRF_3D_DWT = (Int32)(1)
const TRF_3D_RLS = (Int32)(2)
const TRF_3D_LSE = (Int32)(3)
# end enum TRANSFORM

const OPJ_TRANSFORM = Void
const opj_msg_callback = Ptr{Void}

mutable struct opj_event_mgr
    error_handler::opj_msg_callback
    warning_handler::opj_msg_callback
    info_handler::opj_msg_callback
end

const opj_event_mgr_t = Void

mutable struct opj_poc
    resno0::Cint
    compno0::Cint
    layno1::Cint
    resno1::Cint
    compno1::Cint
    prg::OPJ_PROG_ORDER
    tile::Cint
    progorder::NTuple{4, UInt8}
end

const opj_poc_t = Void

mutable struct opj_cparameters
    tile_size_on::Cint
    cp_tx0::Cint
    cp_ty0::Cint
    cp_tz0::Cint
    cp_tdx::Cint
    cp_tdy::Cint
    cp_tdz::Cint
    cp_disto_alloc::Cint
    cp_fixed_alloc::Cint
    cp_fixed_quality::Cint
    cp_matrice::Ptr{Cint}
    tcp_numlayers::Cint
    tcp_rates::NTuple{100, Cfloat}
    tcp_distoratio::NTuple{100, Cfloat}
    cp_comment::Cstring
    csty::Cint
    dcoffset::Cint
    prog_order::OPJ_PROG_ORDER
    POC::NTuple{31, opj_poc_t}
    numpocs::Cint
    numresolution::NTuple{3, Cint}
    cblock_init::NTuple{3, Cint}
    mode::Cint
    irreversible::Cint
    atk_wt::NTuple{3, Cint}
    roi_compno::Cint
    roi_shift::Cint
    res_spec::Cint
    prct_init::NTuple{3, NTuple{32, Cint}}
    transform_format::OPJ_TRANSFORM
    encoding_format::OPJ_ENTROPY_CODING
    infile::NTuple{260, UInt8}
    outfile::NTuple{260, UInt8}
    imgfile::NTuple{260, UInt8}
    index_on::Cint
    index::NTuple{260, UInt8}
    volume_offset_x0::Cint
    volume_offset_y0::Cint
    volume_offset_z0::Cint
    subsampling_dx::Cint
    subsampling_dy::Cint
    subsampling_dz::Cint
    decod_format::Cint
    cod_format::Cint
end

const opj_cparameters_t = Void

mutable struct opj_dparameters
    cp_reduce::NTuple{3, Cint}
    cp_layer::Cint
    bigendian::Cint
    infile::NTuple{260, UInt8}
    outfile::NTuple{260, UInt8}
    imgfile::NTuple{260, UInt8}
    original::NTuple{260, UInt8}
    decod_format::Cint
    cod_format::Cint
    orig_format::Cint
end

const opj_dparameters_t = Void

mutable struct opj_common_struct
    event_mgr::Ptr{opj_event_mgr_t}
    client_data::Ptr{Void}
    is_decompressor::Cint
    codec_format::OPJ_CODEC_FORMAT
    encoding_format::OPJ_ENTROPY_CODING
    transform_format::OPJ_TRANSFORM
    j3d_handle::Ptr{Void}
end

const opj_common_struct_t = Void
const opj_common_ptr = Ptr{opj_common_struct_t}

mutable struct opj_cinfo
    event_mgr::Ptr{opj_event_mgr_t}
    client_data::Ptr{Void}
    is_decompressor::Cint
    codec_format::OPJ_CODEC_FORMAT
    encoding_format::OPJ_ENTROPY_CODING
    transform_format::OPJ_TRANSFORM
    j3d_handle::Ptr{Void}
end

const opj_cinfo_t = Void

mutable struct opj_dinfo
    event_mgr::Ptr{opj_event_mgr_t}
    client_data::Ptr{Void}
    is_decompressor::Cint
    codec_format::OPJ_CODEC_FORMAT
    encoding_format::OPJ_ENTROPY_CODING
    transform_format::OPJ_TRANSFORM
    j3d_handle::Ptr{Void}
end

const opj_dinfo_t = Void

mutable struct opj_cio
    cinfo::opj_common_ptr
    openmode::Cint
    buffer::Ptr{Cuchar}
    length::Cint
    start::Ptr{Cuchar}
    _end::Ptr{Cuchar}
    bp::Ptr{Cuchar}
end

const opj_cio_t = Void

mutable struct opj_volume_comp
    dx::Cint
    dy::Cint
    dz::Cint
    w::Cint
    h::Cint
    l::Cint
    x0::Cint
    y0::Cint
    z0::Cint
    prec::Cint
    bpp::Cint
    dcoffset::Cint
    sgnd::Cint
    bigendian::Cint
    resno_decoded::NTuple{3, Cint}
    factor::NTuple{3, Cint}
    data::Ptr{Cint}
end

const opj_volume_comp_t = Void

mutable struct opj_volume
    x0::Cint
    y0::Cint
    z0::Cint
    x1::Cint
    y1::Cint
    z1::Cint
    numcomps::Cint
    numslices::Cint
    color_space::OPJ_COLOR_SPACE
    comps::Ptr{opj_volume_comp_t}
end

const opj_volume_t = Void

mutable struct opj_volume_comptparm
    dx::Cint
    dy::Cint
    dz::Cint
    w::Cint
    h::Cint
    l::Cint
    x0::Cint
    y0::Cint
    z0::Cint
    prec::Cint
    bpp::Cint
    sgnd::Cint
    dcoffset::Cint
    bigendian::Cint
end

const opj_volume_cmptparm_t = Void
