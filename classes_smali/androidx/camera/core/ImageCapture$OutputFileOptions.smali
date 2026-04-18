.class public final Landroidx/camera/core/ImageCapture$OutputFileOptions;
.super Ljava/lang/Object;
.source "ImageCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputFileOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;
    }
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContentValues:Landroid/content/ContentValues;

.field private final mFile:Ljava/io/File;

.field private final mMetadata:Landroidx/camera/core/ImageCapture$Metadata;

.field private final mOutputStream:Ljava/io/OutputStream;

.field private final mSaveCollection:Landroid/net/Uri;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/io/OutputStream;Landroidx/camera/core/ImageCapture$Metadata;)V
    .registers 7

    .line 2242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2243
    iput-object p1, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mFile:Ljava/io/File;

    .line 2244
    iput-object p2, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mContentResolver:Landroid/content/ContentResolver;

    .line 2245
    iput-object p3, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mSaveCollection:Landroid/net/Uri;

    .line 2246
    iput-object p4, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mContentValues:Landroid/content/ContentValues;

    .line 2247
    iput-object p5, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mOutputStream:Ljava/io/OutputStream;

    if-nez p6, :cond_14

    .line 2248
    new-instance p6, Landroidx/camera/core/ImageCapture$Metadata;

    invoke-direct {p6}, Landroidx/camera/core/ImageCapture$Metadata;-><init>()V

    :cond_14
    iput-object p6, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mMetadata:Landroidx/camera/core/ImageCapture$Metadata;

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .line 2266
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .registers 2

    .line 2284
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 2257
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getMetadata()Landroidx/camera/core/ImageCapture$Metadata;
    .registers 2

    .line 2306
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mMetadata:Landroidx/camera/core/ImageCapture$Metadata;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 2293
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mOutputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getSaveCollection()Landroid/net/Uri;
    .registers 2

    .line 2275
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mSaveCollection:Landroid/net/Uri;

    return-object v0
.end method
