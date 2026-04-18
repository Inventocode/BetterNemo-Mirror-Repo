.class public Landroidx/renderscript/ScriptC;
.super Landroidx/renderscript/Script;
.source "ScriptC.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptC"


# direct methods
.method protected constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .registers 4

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/Script;-><init>(JLandroidx/renderscript/RenderScript;)V

    return-void
.end method

.method protected constructor <init>(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .registers 6

    const-wide/16 v0, 0x0

    .line 58
    invoke-direct {p0, v0, v1, p1}, Landroidx/renderscript/Script;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 59
    invoke-static {p1, p2, p3}, Landroidx/renderscript/ScriptC;->internalCreate(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-eqz p3, :cond_11

    .line 63
    invoke-virtual {p0, p1, p2}, Landroidx/renderscript/BaseObj;->setID(J)V

    return-void

    .line 61
    :cond_11
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    const-string p2, "Loading of ScriptC script failed."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Landroidx/renderscript/RenderScript;Ljava/lang/String;[B[B)V
    .registers 9

    const-wide/16 v0, 0x0

    .line 75
    invoke-direct {p0, v0, v1, p1}, Landroidx/renderscript/Script;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 77
    sget v2, Landroidx/renderscript/RenderScript;->sPointerSize:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_f

    .line 78
    invoke-static {p1, p2, p3}, Landroidx/renderscript/ScriptC;->internalStringCreate(Landroidx/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide p1

    goto :goto_13

    .line 80
    :cond_f
    invoke-static {p1, p2, p4}, Landroidx/renderscript/ScriptC;->internalStringCreate(Landroidx/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide p1

    :goto_13
    cmp-long p3, p1, v0

    if-eqz p3, :cond_1b

    .line 85
    invoke-virtual {p0, p1, p2}, Landroidx/renderscript/BaseObj;->setID(J)V

    return-void

    .line 83
    :cond_1b
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    const-string p2, "Loading of ScriptC script failed."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static declared-synchronized internalCreate(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)J
    .registers 11

    const-class v0, Landroidx/renderscript/ScriptC;

    monitor-enter v0

    .line 91
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_48

    const/16 v2, 0x400

    :try_start_9
    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 97
    :goto_d
    array-length v5, v2

    sub-int/2addr v5, v4

    if-nez v5, :cond_1c

    .line 99
    array-length v5, v2

    mul-int/lit8 v5, v5, 0x2

    new-array v6, v5, [B

    .line 100
    array-length v7, v2

    invoke-static {v2, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v5, v4

    move-object v2, v6

    .line 104
    :cond_1c
    invoke-virtual {v1, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_3d

    if-gtz v5, :cond_3b

    .line 111
    :try_start_22
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_42
    .catchall {:try_start_22 .. :try_end_25} :catchall_48

    .line 117
    :try_start_25
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    .line 122
    invoke-virtual {p0, p1, p2, v2, v4}, Landroidx/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide p0
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_48

    monitor-exit v0

    return-wide p0

    :cond_3b
    add-int/2addr v4, v5

    goto :goto_d

    :catchall_3d
    move-exception p0

    .line 111
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw p0
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_48

    .line 114
    :catch_42
    :try_start_42
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {p0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw p0
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized internalStringCreate(Landroidx/renderscript/RenderScript;Ljava/lang/String;[B)J
    .registers 6

    const-class v0, Landroidx/renderscript/ScriptC;

    monitor-enter v0

    .line 127
    :try_start_3
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    array-length v2, p2

    invoke-virtual {p0, p1, v1, p2, v2}, Landroidx/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide p0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-wide p0

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method
