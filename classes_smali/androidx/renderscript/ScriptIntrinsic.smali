.class public abstract Landroidx/renderscript/ScriptIntrinsic;
.super Landroidx/renderscript/Script;
.source "ScriptIntrinsic.java"


# direct methods
.method constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .registers 6

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/Script;-><init>(JLandroidx/renderscript/RenderScript;)V

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_a

    return-void

    .line 31
    :cond_a
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    const-string p2, "Loading of ScriptIntrinsic failed."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
