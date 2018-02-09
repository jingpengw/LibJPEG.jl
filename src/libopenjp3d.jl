# Julia wrapper for header: ../deps/openjpeg/src/lib/openjp3d/openjp3d.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

const LIB_OPEN_JP3D_PATH = "../deps/openjpeg/build/bin/libopenjp3d"

function opj_version()
    ccall((:opj_version, LIB_OPEN_JP3D_PATH), Cstring, ())
end

function opj_volume_create(numcmpts::Cint, cmptparms, clrspc::OPJ_COLOR_SPACE)
    ccall((:opj_volume_create, LIB_OPEN_JP3D_PATH), Ptr{opj_volume_t}, (Cint, Ptr{opj_volume_cmptparm_t}, OPJ_COLOR_SPACE), numcmpts, cmptparms, clrspc)
end

function opj_volume_destroy(volume)
    ccall((:opj_volume_destroy, LIB_OPEN_JP3D_PATH), Void, (Ptr{opj_volume_t},), volume)
end

function opj_cio_open(cinfo::opj_common_ptr, buffer, length::Cint)
    ccall((:opj_cio_open, LIB_OPEN_JP3D_PATH), Ptr{opj_cio_t}, (opj_common_ptr, Ptr{Cuchar}, Cint), cinfo, buffer, length)
end

function opj_cio_close(cio)
    ccall((:opj_cio_close, LIB_OPEN_JP3D_PATH), Void, (Ptr{opj_cio_t},), cio)
end

function cio_tell(cio)
    ccall((:cio_tell, LIB_OPEN_JP3D_PATH), Cint, (Ptr{opj_cio_t},), cio)
end

function cio_seek(cio, pos::Cint)
    ccall((:cio_seek, LIB_OPEN_JP3D_PATH), Void, (Ptr{opj_cio_t}, Cint), cio, pos)
end

function opj_set_event_mgr(cinfo::opj_common_ptr, event_mgr, context)
    ccall((:opj_set_event_mgr, LIB_OPEN_JP3D_PATH), Ptr{opj_event_mgr_t}, (opj_common_ptr, Ptr{opj_event_mgr_t}, Ptr{Void}), cinfo, event_mgr, context)
end

function opj_create_decompress(format::OPJ_CODEC_FORMAT)
    ccall((:opj_create_decompress, LIB_OPEN_JP3D_PATH), Ptr{opj_dinfo_t}, (OPJ_CODEC_FORMAT,), format)
end

function opj_destroy_decompress(dinfo)
    ccall((:opj_destroy_decompress, LIB_OPEN_JP3D_PATH), Void, (Ptr{opj_dinfo_t},), dinfo)
end

function opj_set_default_decoder_parameters(parameters)
    ccall((:opj_set_default_decoder_parameters, LIB_OPEN_JP3D_PATH), Void, (Ptr{opj_dparameters_t},), parameters)
end

function opj_setup_decoder(dinfo, parameters)
    ccall((:opj_setup_decoder, LIB_OPEN_JP3D_PATH), Void, (Ptr{opj_dinfo_t}, Ptr{opj_dparameters_t}), dinfo, parameters)
end

function opj_decode(dinfo, cio)
    ccall((:opj_decode, LIB_OPEN_JP3D_PATH), Ptr{opj_volume_t}, (Ptr{opj_dinfo_t}, Ptr{opj_cio_t}), dinfo, cio)
end

function opj_create_compress(format::OPJ_CODEC_FORMAT)
    ccall((:opj_create_compress, LIB_OPEN_JP3D_PATH), Ptr{opj_cinfo_t}, (OPJ_CODEC_FORMAT,), format)
end

function opj_destroy_compress(cinfo)
    ccall((:opj_destroy_compress, LIB_OPEN_JP3D_PATH), Void, (Ptr{opj_cinfo_t},), cinfo)
end

function opj_set_default_encoder_parameters(parameters)
    ccall((:opj_set_default_encoder_parameters, LIB_OPEN_JP3D_PATH), Void, (Ptr{opj_cparameters_t},), parameters)
end

function opj_setup_encoder(cinfo, parameters, volume)
    ccall((:opj_setup_encoder, LIB_OPEN_JP3D_PATH), Void, (Ptr{opj_cinfo_t}, Ptr{opj_cparameters_t}, Ptr{opj_volume_t}), cinfo, parameters, volume)
end

function opj_encode(cinfo, cio, volume, index)
    ccall((:opj_encode, LIB_OPEN_JP3D_PATH), Cint, (Ptr{opj_cinfo_t}, Ptr{opj_cio_t}, Ptr{opj_volume_t}, Cstring), cinfo, cio, volume, index)
end
