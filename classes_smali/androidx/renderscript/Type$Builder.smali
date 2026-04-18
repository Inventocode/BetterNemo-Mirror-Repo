.class public Landroidx/renderscript/Type$Builder;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroidx/renderscript/Element;

.field mRS:Landroidx/renderscript/RenderScript;

.field mYuv:I


# direct methods
.method public constructor <init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)V
    .registers 4

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 281
    iput v0, p0, Landroidx/renderscript/Type$Builder;->mDimX:I

    .line 297
    invoke-virtual {p2}, Landroidx/renderscript/BaseObj;->checkValid()V

    .line 298
    iput-object p1, p0, Landroidx/renderscript/Type$Builder;->mRS:Landroidx/renderscript/RenderScript;

    .line 299
    iput-object p2, p0, Landroidx/renderscript/Type$Builder;->mElement:Landroidx/renderscript/Element;

    return-void
.end method


# virtual methods
.method public create()Landroidx/renderscript/Type;
    .registers 12

    .line 368
    iget v0, p0, Landroidx/renderscript/Type$Builder;->mDimZ:I

    const/4 v1, 0x1

    if-lez v0, :cond_22

    .line 369
    iget v2, p0, Landroidx/renderscript/Type$Builder;->mDimX:I

    if-lt v2, v1, :cond_1a

    iget v2, p0, Landroidx/renderscript/Type$Builder;->mDimY:I

    if-lt v2, v1, :cond_1a

    .line 372
    iget-boolean v2, p0, Landroidx/renderscript/Type$Builder;->mDimFaces:Z

    if-nez v2, :cond_12

    goto :goto_22

    .line 373
    :cond_12
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps not supported with 3D types."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_1a
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    const-string v1, "Both X and Y dimension required when Z is present."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_22
    :goto_22
    iget v2, p0, Landroidx/renderscript/Type$Builder;->mDimY:I

    if-lez v2, :cond_33

    .line 377
    iget v3, p0, Landroidx/renderscript/Type$Builder;->mDimX:I

    if-lt v3, v1, :cond_2b

    goto :goto_33

    .line 378
    :cond_2b
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    const-string v1, "X dimension required when Y is present."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_33
    :goto_33
    iget-boolean v3, p0, Landroidx/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v3, :cond_42

    if-lt v2, v1, :cond_3a

    goto :goto_42

    .line 383
    :cond_3a
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps require 2D Types."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_42
    :goto_42
    iget v1, p0, Landroidx/renderscript/Type$Builder;->mYuv:I

    if-eqz v1, :cond_57

    if-nez v0, :cond_4f

    if-nez v3, :cond_4f

    .line 388
    iget-boolean v0, p0, Landroidx/renderscript/Type$Builder;->mDimMipmaps:Z

    if-nez v0, :cond_4f

    goto :goto_57

    .line 389
    :cond_4f
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    const-string v1, "YUV only supports basic 2D."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_57
    :goto_57
    iget-object v2, p0, Landroidx/renderscript/Type$Builder;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v0, p0, Landroidx/renderscript/Type$Builder;->mElement:Landroidx/renderscript/Element;

    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    iget v5, p0, Landroidx/renderscript/Type$Builder;->mDimX:I

    iget v6, p0, Landroidx/renderscript/Type$Builder;->mDimY:I

    iget v7, p0, Landroidx/renderscript/Type$Builder;->mDimZ:I

    iget-boolean v8, p0, Landroidx/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v9, p0, Landroidx/renderscript/Type$Builder;->mDimFaces:Z

    iget v10, p0, Landroidx/renderscript/Type$Builder;->mYuv:I

    invoke-virtual/range {v2 .. v10}, Landroidx/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v0

    .line 396
    new-instance v2, Landroidx/renderscript/Type;

    iget-object v3, p0, Landroidx/renderscript/Type$Builder;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroidx/renderscript/Type;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 398
    iget-object v0, p0, Landroidx/renderscript/Type$Builder;->mElement:Landroidx/renderscript/Element;

    iput-object v0, v2, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 399
    iget v0, p0, Landroidx/renderscript/Type$Builder;->mDimX:I

    iput v0, v2, Landroidx/renderscript/Type;->mDimX:I

    .line 400
    iget v0, p0, Landroidx/renderscript/Type$Builder;->mDimY:I

    iput v0, v2, Landroidx/renderscript/Type;->mDimY:I

    .line 401
    iget v0, p0, Landroidx/renderscript/Type$Builder;->mDimZ:I

    iput v0, v2, Landroidx/renderscript/Type;->mDimZ:I

    .line 402
    iget-boolean v0, p0, Landroidx/renderscript/Type$Builder;->mDimMipmaps:Z

    iput-boolean v0, v2, Landroidx/renderscript/Type;->mDimMipmaps:Z

    .line 403
    iget-boolean v0, p0, Landroidx/renderscript/Type$Builder;->mDimFaces:Z

    iput-boolean v0, v2, Landroidx/renderscript/Type;->mDimFaces:Z

    .line 404
    iget v0, p0, Landroidx/renderscript/Type$Builder;->mYuv:I

    iput v0, v2, Landroidx/renderscript/Type;->mDimYuv:I

    .line 406
    invoke-virtual {v2}, Landroidx/renderscript/Type;->calcElementCount()V

    return-object v2
.end method

.method public setFaces(Z)Landroidx/renderscript/Type$Builder;
    .registers 2

    .line 338
    iput-boolean p1, p0, Landroidx/renderscript/Type$Builder;->mDimFaces:Z

    return-object p0
.end method

.method public setMipmaps(Z)Landroidx/renderscript/Type$Builder;
    .registers 2

    .line 333
    iput-boolean p1, p0, Landroidx/renderscript/Type$Builder;->mDimMipmaps:Z

    return-object p0
.end method

.method public setX(I)Landroidx/renderscript/Type$Builder;
    .registers 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    .line 312
    iput p1, p0, Landroidx/renderscript/Type$Builder;->mDimX:I

    return-object p0

    .line 310
    :cond_6
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Values of less than 1 for Dimension X are not valid."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setY(I)Landroidx/renderscript/Type$Builder;
    .registers 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    .line 320
    iput p1, p0, Landroidx/renderscript/Type$Builder;->mDimY:I

    return-object p0

    .line 318
    :cond_6
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Values of less than 1 for Dimension Y are not valid."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setYuvFormat(I)Landroidx/renderscript/Type$Builder;
    .registers 3

    const/16 v0, 0x11

    if-eq p1, v0, :cond_12

    const v0, 0x32315659

    if-ne p1, v0, :cond_a

    goto :goto_12

    .line 354
    :cond_a
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Only NV21 and YV12 are supported.."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 357
    :cond_12
    :goto_12
    iput p1, p0, Landroidx/renderscript/Type$Builder;->mYuv:I

    return-object p0
.end method

.method public setZ(I)Landroidx/renderscript/Type$Builder;
    .registers 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    .line 328
    iput p1, p0, Landroidx/renderscript/Type$Builder;->mDimZ:I

    return-object p0

    .line 326
    :cond_6
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Values of less than 1 for Dimension Z are not valid."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
