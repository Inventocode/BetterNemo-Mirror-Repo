.class public Landroidx/camera/core/internal/YuvToJpegProcessor;
.super Ljava/lang/Object;
.source "YuvToJpegProcessor.java"

# interfaces
.implements Landroidx/camera/core/impl/CaptureProcessor;


# static fields
.field private static final UNINITIALIZED_RECT:Landroid/graphics/Rect;


# instance fields
.field mCloseCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mClosed:Z

.field private mImageRect:Landroid/graphics/Rect;

.field private mImageWriter:Landroid/media/ImageWriter;

.field private final mLock:Ljava/lang/Object;

.field private final mMaxImages:I

.field private mProcessingImages:I

.field private mQuality:I

.field private mRotationDegrees:I


# direct methods
.method public static synthetic $r8$lambda$umNil8xN5u1iktccHX9lK84W-fY(Landroidx/camera/core/internal/YuvToJpegProcessor;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Landroidx/camera/core/internal/YuvToJpegProcessor;->lambda$getCloseFuture$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroidx/camera/core/internal/YuvToJpegProcessor;->UNINITIALIZED_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mRotationDegrees:I

    .line 70
    iput-boolean v0, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mClosed:Z

    .line 72
    iput v0, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    .line 76
    sget-object v0, Landroidx/camera/core/internal/YuvToJpegProcessor;->UNINITIALIZED_RECT:Landroid/graphics/Rect;

    iput-object v0, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mImageRect:Landroid/graphics/Rect;

    .line 85
    iput p1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mQuality:I

    .line 86
    iput p2, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mMaxImages:I

    return-void
.end method

.method private synthetic lambda$getCloseFuture$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_3
    iput-object p1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mCloseCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 289
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    const-string p1, "YuvToJpegProcessor-close"

    return-object p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 5

    .line 247
    iget-object v0, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_3
    iget-boolean v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mClosed:Z

    if-eqz v1, :cond_9

    .line 249
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 252
    iput-boolean v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mClosed:Z

    .line 255
    iget v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    const/4 v2, 0x0

    if-nez v1, :cond_24

    iget-object v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mImageWriter:Landroid/media/ImageWriter;

    if-eqz v1, :cond_24

    const-string v1, "YuvToJpegProcessor"

    const-string v3, "No processing in progress. Closing immediately."

    .line 256
    invoke-static {v1, v3}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v1}, Landroid/media/ImageWriter;->close()V

    .line 258
    iget-object v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mCloseCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    goto :goto_2c

    :cond_24
    const-string v1, "YuvToJpegProcessor"

    const-string v3, "close() called while processing. Will close after completion."

    .line 260
    invoke-static {v1, v3}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 262
    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_33

    if-eqz v1, :cond_32

    .line 265
    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    :cond_32
    return-void

    :catchall_33
    move-exception v1

    .line 262
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public getCloseFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_3
    iget-boolean v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mClosed:Z

    if-eqz v1, :cond_11

    iget v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    if-nez v1, :cond_11

    const/4 v1, 0x0

    .line 282
    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    goto :goto_26

    .line 284
    :cond_11
    iget-object v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v1, :cond_20

    .line 285
    new-instance v1, Landroidx/camera/core/internal/YuvToJpegProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/camera/core/internal/YuvToJpegProcessor$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/internal/YuvToJpegProcessor;)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 293
    :cond_20
    iget-object v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 295
    :goto_26
    monitor-exit v0

    return-object v1

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public onOutputSurface(Landroid/view/Surface;I)V
    .registers 5

    const/16 v0, 0x100

    if-ne p2, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "YuvToJpegProcessor only supports JPEG output format."

    .line 111
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 113
    iget-object v0, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_f
    iget-boolean v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mClosed:Z

    if-nez v1, :cond_28

    .line 115
    iget-object v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mImageWriter:Landroid/media/ImageWriter;

    if-nez v1, :cond_20

    .line 118
    iget v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mMaxImages:I

    invoke-static {p1, v1, p2}, Landroidx/camera/core/internal/compat/ImageWriterCompat;->newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mImageWriter:Landroid/media/ImageWriter;

    goto :goto_2f

    .line 116
    :cond_20
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Output surface already set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    const-string p1, "YuvToJpegProcessor"

    const-string p2, "Cannot set output surface. Processor is closed."

    .line 120
    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_31

    throw p1
.end method

.method public onResolutionUpdate(Landroid/util/Size;)V
    .registers 6

    .line 301
    iget-object v0, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mImageRect:Landroid/graphics/Rect;

    .line 303
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public process(Landroidx/camera/core/impl/ImageProxyBundle;)V
    .registers 21

    move-object/from16 v1, p0

    .line 127
    invoke-interface/range {p1 .. p1}, Landroidx/camera/core/impl/ImageProxyBundle;->getCaptureIds()Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing image bundle have single capture id, but found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-static {v2, v5}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 131
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v2, p1

    invoke-interface {v2, v0}, Landroidx/camera/core/impl/ImageProxyBundle;->getImageProxy(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 139
    iget-object v2, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 140
    :try_start_43
    iget-object v5, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mImageWriter:Landroid/media/ImageWriter;

    .line 141
    iget-boolean v6, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mClosed:Z

    if-nez v6, :cond_4b

    const/4 v6, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v6, 0x0

    .line 142
    :goto_4c
    iget-object v7, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mImageRect:Landroid/graphics/Rect;

    if-eqz v6, :cond_55

    .line 144
    iget v8, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    add-int/2addr v8, v4

    iput v8, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    .line 146
    :cond_55
    iget v8, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mQuality:I

    .line 147
    iget v9, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mRotationDegrees:I

    .line 148
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_43 .. :try_end_5a} :catchall_1ce

    const/4 v2, 0x0

    .line 153
    :try_start_5b
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/camera/core/ImageProxy;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_61} :catch_13e
    .catchall {:try_start_5b .. :try_end_61} :catchall_13a

    if-nez v6, :cond_99

    :try_start_63
    const-string v0, "YuvToJpegProcessor"

    const-string v7, "Image enqueued for processing on closed processor."

    .line 155
    invoke-static {v0, v7}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-interface {v10}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6d} :catch_137
    .catchall {:try_start_63 .. :try_end_6d} :catchall_134

    .line 211
    iget-object v7, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v7

    if-eqz v6, :cond_82

    .line 213
    :try_start_72
    iget v0, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    add-int/lit8 v6, v0, -0x1

    iput v6, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    if-nez v0, :cond_82

    iget-boolean v0, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mClosed:Z

    if-eqz v0, :cond_82

    const/4 v3, 0x1

    goto :goto_82

    :catchall_80
    move-exception v0

    goto :goto_97

    .line 214
    :cond_82
    :goto_82
    iget-object v0, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mCloseCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 215
    monitor-exit v7
    :try_end_85
    .catchall {:try_start_72 .. :try_end_85} :catchall_80

    if-eqz v3, :cond_96

    .line 226
    invoke-virtual {v5}, Landroid/media/ImageWriter;->close()V

    const-string v3, "YuvToJpegProcessor"

    const-string v4, "Closed after completion of last image processed."

    .line 227
    invoke-static {v3, v4}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_96

    .line 231
    invoke-virtual {v0, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    :cond_96
    return-void

    .line 215
    :goto_97
    :try_start_97
    monitor-exit v7
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_80

    throw v0

    .line 161
    :cond_99
    :try_start_99
    invoke-virtual {v5}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v11
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9d} :catch_137
    .catchall {:try_start_99 .. :try_end_9d} :catchall_134

    .line 163
    :try_start_9d
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/camera/core/ImageProxy;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a4} :catch_132
    .catchall {:try_start_9d .. :try_end_a4} :catchall_162

    .line 164
    :try_start_a4
    invoke-interface {v12}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result v0

    const/16 v10, 0x23

    if-ne v0, v10, :cond_ae

    const/4 v0, 0x1

    goto :goto_af

    :cond_ae
    const/4 v0, 0x0

    :goto_af
    const-string v10, "Input image is not expected YUV_420_888 image format"

    invoke-static {v0, v10}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 166
    invoke-static {v12}, Landroidx/camera/core/internal/utils/ImageUtil;->yuv_420_888toNv21(Landroidx/camera/core/ImageProxy;)[B

    move-result-object v14

    .line 168
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v15, 0x11

    invoke-interface {v12}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v16

    .line 169
    invoke-interface {v12}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v17

    const/16 v18, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 171
    invoke-virtual {v11}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v10

    aget-object v10, v10, v3

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 172
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    .line 173
    new-instance v14, Landroidx/camera/core/impl/utils/ExifOutputStream;

    new-instance v15, Landroidx/camera/core/internal/ByteBufferOutputStream;

    invoke-direct {v15, v10}, Landroidx/camera/core/internal/ByteBufferOutputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 174
    invoke-static {v12, v9}, Landroidx/camera/core/impl/utils/ExifData;->create(Landroidx/camera/core/ImageProxy;I)Landroidx/camera/core/impl/utils/ExifData;

    move-result-object v9

    invoke-direct {v14, v15, v9}, Landroidx/camera/core/impl/utils/ExifOutputStream;-><init>(Ljava/io/OutputStream;Landroidx/camera/core/impl/utils/ExifData;)V

    .line 175
    invoke-virtual {v0, v7, v8, v14}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 178
    invoke-interface {v12}, Landroidx/camera/core/ImageProxy;->close()V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_ec} :catch_12f
    .catchall {:try_start_a4 .. :try_end_ec} :catchall_12c

    .line 182
    :try_start_ec
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 183
    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 186
    invoke-virtual {v5, v11}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f9} :catch_129
    .catchall {:try_start_ec .. :try_end_f9} :catchall_126

    .line 211
    iget-object v7, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v7

    if-eqz v6, :cond_10e

    .line 213
    :try_start_fe
    iget v0, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    add-int/lit8 v6, v0, -0x1

    iput v6, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    if-nez v0, :cond_10e

    iget-boolean v0, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mClosed:Z

    if-eqz v0, :cond_10e

    const/4 v3, 0x1

    goto :goto_10e

    :catchall_10c
    move-exception v0

    goto :goto_124

    .line 214
    :cond_10e
    :goto_10e
    iget-object v0, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mCloseCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 215
    monitor-exit v7
    :try_end_111
    .catchall {:try_start_fe .. :try_end_111} :catchall_10c

    if-eqz v3, :cond_1cb

    .line 226
    invoke-virtual {v5}, Landroid/media/ImageWriter;->close()V

    const-string v3, "YuvToJpegProcessor"

    const-string v4, "Closed after completion of last image processed."

    .line 227
    invoke-static {v3, v4}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1cb

    .line 231
    :goto_11f
    invoke-virtual {v0, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    goto/16 :goto_1cb

    .line 215
    :goto_124
    :try_start_124
    monitor-exit v7
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_10c

    throw v0

    :catchall_126
    move-exception v0

    move-object v10, v2

    goto :goto_163

    :catch_129
    move-exception v0

    move-object v10, v2

    goto :goto_141

    :catchall_12c
    move-exception v0

    move-object v10, v12

    goto :goto_163

    :catch_12f
    move-exception v0

    move-object v10, v12

    goto :goto_141

    :catch_132
    move-exception v0

    goto :goto_141

    :catchall_134
    move-exception v0

    move-object v11, v2

    goto :goto_163

    :catch_137
    move-exception v0

    move-object v11, v2

    goto :goto_141

    :catchall_13a
    move-exception v0

    move-object v10, v2

    move-object v11, v10

    goto :goto_163

    :catch_13e
    move-exception v0

    move-object v10, v2

    move-object v11, v10

    :goto_141
    if-eqz v6, :cond_199

    :try_start_143
    const-string v7, "YuvToJpegProcessor"

    const-string v8, "Failed to process YUV -> JPEG"

    .line 198
    invoke-static {v7, v8, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    invoke-virtual {v5}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v11

    .line 202
    invoke-virtual {v11}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 204
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 205
    invoke-virtual {v5, v11}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_161
    .catchall {:try_start_143 .. :try_end_161} :catchall_162

    goto :goto_199

    :catchall_162
    move-exception v0

    .line 211
    :goto_163
    iget-object v7, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v7

    if-eqz v6, :cond_178

    .line 213
    :try_start_168
    iget v6, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    add-int/lit8 v8, v6, -0x1

    iput v8, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    if-nez v6, :cond_178

    iget-boolean v6, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mClosed:Z

    if-eqz v6, :cond_178

    const/4 v3, 0x1

    goto :goto_178

    :catchall_176
    move-exception v0

    goto :goto_197

    .line 214
    :cond_178
    :goto_178
    iget-object v4, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mCloseCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 215
    monitor-exit v7
    :try_end_17b
    .catchall {:try_start_168 .. :try_end_17b} :catchall_176

    if-eqz v11, :cond_180

    .line 219
    invoke-virtual {v11}, Landroid/media/Image;->close()V

    :cond_180
    if-eqz v10, :cond_185

    .line 222
    invoke-interface {v10}, Landroidx/camera/core/ImageProxy;->close()V

    :cond_185
    if-eqz v3, :cond_196

    .line 226
    invoke-virtual {v5}, Landroid/media/ImageWriter;->close()V

    const-string v3, "YuvToJpegProcessor"

    const-string v5, "Closed after completion of last image processed."

    .line 227
    invoke-static {v3, v5}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_196

    .line 231
    invoke-virtual {v4, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 234
    :cond_196
    throw v0

    .line 215
    :goto_197
    :try_start_197
    monitor-exit v7
    :try_end_198
    .catchall {:try_start_197 .. :try_end_198} :catchall_176

    throw v0

    .line 211
    :cond_199
    :goto_199
    iget-object v7, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v7

    if-eqz v6, :cond_1ae

    .line 213
    :try_start_19e
    iget v0, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    add-int/lit8 v6, v0, -0x1

    iput v6, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mProcessingImages:I

    if-nez v0, :cond_1ae

    iget-boolean v0, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mClosed:Z

    if-eqz v0, :cond_1ae

    const/4 v3, 0x1

    goto :goto_1ae

    :catchall_1ac
    move-exception v0

    goto :goto_1cc

    .line 214
    :cond_1ae
    :goto_1ae
    iget-object v0, v1, Landroidx/camera/core/internal/YuvToJpegProcessor;->mCloseCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 215
    monitor-exit v7
    :try_end_1b1
    .catchall {:try_start_19e .. :try_end_1b1} :catchall_1ac

    if-eqz v11, :cond_1b6

    .line 219
    invoke-virtual {v11}, Landroid/media/Image;->close()V

    :cond_1b6
    if-eqz v10, :cond_1bb

    .line 222
    invoke-interface {v10}, Landroidx/camera/core/ImageProxy;->close()V

    :cond_1bb
    if-eqz v3, :cond_1cb

    .line 226
    invoke-virtual {v5}, Landroid/media/ImageWriter;->close()V

    const-string v3, "YuvToJpegProcessor"

    const-string v4, "Closed after completion of last image processed."

    .line 227
    invoke-static {v3, v4}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1cb

    goto/16 :goto_11f

    :cond_1cb
    :goto_1cb
    return-void

    .line 215
    :goto_1cc
    :try_start_1cc
    monitor-exit v7
    :try_end_1cd
    .catchall {:try_start_1cc .. :try_end_1cd} :catchall_1ac

    throw v0

    :catchall_1ce
    move-exception v0

    .line 148
    :try_start_1cf
    monitor-exit v2
    :try_end_1d0
    .catchall {:try_start_1cf .. :try_end_1d0} :catchall_1ce

    throw v0
.end method

.method public setJpegQuality(I)V
    .registers 3

    .line 93
    iget-object v0, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_3
    iput p1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mQuality:I

    .line 95
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public setRotationDegrees(I)V
    .registers 3

    .line 104
    iget-object v0, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_3
    iput p1, p0, Landroidx/camera/core/internal/YuvToJpegProcessor;->mRotationDegrees:I

    .line 106
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method
