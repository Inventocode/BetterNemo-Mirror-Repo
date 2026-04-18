.class public Landroidx/renderscript/Element;
.super Landroidx/renderscript/BaseObj;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/Element$Builder;,
        Landroidx/renderscript/Element$DataKind;,
        Landroidx/renderscript/Element$DataType;
    }
.end annotation


# instance fields
.field mArraySizes:[I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroidx/renderscript/Element;

.field mKind:Landroidx/renderscript/Element$DataKind;

.field mNormalized:Z

.field mOffsetInBytes:[I

.field mSize:I

.field mType:Landroidx/renderscript/Element$DataType;

.field mVectorSize:I

.field mVisibleElementMap:[I


# direct methods
.method constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .registers 4

    .line 754
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/BaseObj;-><init>(JLandroidx/renderscript/RenderScript;)V

    return-void
.end method

.method constructor <init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;ZI)V
    .registers 8

    .line 735
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/BaseObj;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 736
    sget-object p1, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroidx/renderscript/Element$DataType;

    if-eq p4, p1, :cond_20

    sget-object p1, Landroidx/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroidx/renderscript/Element$DataType;

    if-eq p4, p1, :cond_20

    sget-object p1, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroidx/renderscript/Element$DataType;

    if-eq p4, p1, :cond_20

    const/4 p1, 0x3

    if-ne p7, p1, :cond_19

    .line 740
    iget p1, p4, Landroidx/renderscript/Element$DataType;->mSize:I

    mul-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroidx/renderscript/Element;->mSize:I

    goto :goto_24

    .line 742
    :cond_19
    iget p1, p4, Landroidx/renderscript/Element$DataType;->mSize:I

    mul-int p1, p1, p7

    iput p1, p0, Landroidx/renderscript/Element;->mSize:I

    goto :goto_24

    .line 745
    :cond_20
    iget p1, p4, Landroidx/renderscript/Element$DataType;->mSize:I

    iput p1, p0, Landroidx/renderscript/Element;->mSize:I

    .line 747
    :goto_24
    iput-object p4, p0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 748
    iput-object p5, p0, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    .line 749
    iput-boolean p6, p0, Landroidx/renderscript/Element;->mNormalized:Z

    .line 750
    iput p7, p0, Landroidx/renderscript/Element;->mVectorSize:I

    return-void
.end method

.method constructor <init>(JLandroidx/renderscript/RenderScript;[Landroidx/renderscript/Element;[Ljava/lang/String;[I)V
    .registers 7

    .line 718
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/BaseObj;-><init>(JLandroidx/renderscript/RenderScript;)V

    const/4 p1, 0x0

    .line 719
    iput p1, p0, Landroidx/renderscript/Element;->mSize:I

    const/4 p2, 0x1

    .line 720
    iput p2, p0, Landroidx/renderscript/Element;->mVectorSize:I

    .line 721
    iput-object p4, p0, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    .line 722
    iput-object p5, p0, Landroidx/renderscript/Element;->mElementNames:[Ljava/lang/String;

    .line 723
    iput-object p6, p0, Landroidx/renderscript/Element;->mArraySizes:[I

    .line 724
    sget-object p2, Landroidx/renderscript/Element$DataType;->NONE:Landroidx/renderscript/Element$DataType;

    iput-object p2, p0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 725
    sget-object p2, Landroidx/renderscript/Element$DataKind;->USER:Landroidx/renderscript/Element$DataKind;

    iput-object p2, p0, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    .line 726
    array-length p2, p4

    new-array p2, p2, [I

    iput-object p2, p0, Landroidx/renderscript/Element;->mOffsetInBytes:[I

    .line 727
    :goto_1c
    iget-object p2, p0, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    array-length p3, p2

    if-ge p1, p3, :cond_37

    .line 728
    iget-object p3, p0, Landroidx/renderscript/Element;->mOffsetInBytes:[I

    iget p4, p0, Landroidx/renderscript/Element;->mSize:I

    aput p4, p3, p1

    .line 729
    aget-object p2, p2, p1

    iget p2, p2, Landroidx/renderscript/Element;->mSize:I

    iget-object p3, p0, Landroidx/renderscript/Element;->mArraySizes:[I

    aget p3, p3, p1

    mul-int p2, p2, p3

    add-int/2addr p4, p2

    iput p4, p0, Landroidx/renderscript/Element;->mSize:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    .line 731
    :cond_37
    invoke-direct {p0}, Landroidx/renderscript/Element;->updateVisibleSubElements()V

    return-void
.end method

.method public static ALLOCATION(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 2

    .line 423
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ALLOCATION:Landroidx/renderscript/Element;

    if-nez v0, :cond_c

    .line 424
    sget-object v0, Landroidx/renderscript/Element$DataType;->RS_ALLOCATION:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ALLOCATION:Landroidx/renderscript/Element;

    .line 426
    :cond_c
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_ALLOCATION:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static A_8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 445
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_A_8:Landroidx/renderscript/Element;

    if-nez v0, :cond_e

    .line 446
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_A:Landroidx/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_A_8:Landroidx/renderscript/Element;

    .line 448
    :cond_e
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_A_8:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static BOOLEAN(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 2

    .line 318
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_BOOLEAN:Landroidx/renderscript/Element;

    if-nez v0, :cond_c

    .line 319
    sget-object v0, Landroidx/renderscript/Element$DataType;->BOOLEAN:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_BOOLEAN:Landroidx/renderscript/Element;

    .line 321
    :cond_c
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_BOOLEAN:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static ELEMENT(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 2

    .line 409
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ELEMENT:Landroidx/renderscript/Element;

    if-nez v0, :cond_c

    .line 410
    sget-object v0, Landroidx/renderscript/Element$DataType;->RS_ELEMENT:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ELEMENT:Landroidx/renderscript/Element;

    .line 412
    :cond_c
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_ELEMENT:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 2

    .line 395
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_F32:Landroidx/renderscript/Element;

    if-nez v0, :cond_c

    .line 396
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_F32:Landroidx/renderscript/Element;

    .line 398
    :cond_c
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_F32:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 487
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_2:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 488
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_2:Landroidx/renderscript/Element;

    .line 490
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static F32_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 494
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_3:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 495
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_3:Landroidx/renderscript/Element;

    .line 497
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static F32_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 501
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_4:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 502
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_4:Landroidx/renderscript/Element;

    .line 504
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 2

    .line 402
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_F64:Landroidx/renderscript/Element;

    if-nez v0, :cond_c

    .line 403
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_64:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_F64:Landroidx/renderscript/Element;

    .line 405
    :cond_c
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_F64:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 508
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_2:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 509
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_64:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_2:Landroidx/renderscript/Element;

    .line 511
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static F64_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 515
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_3:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 516
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_64:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_3:Landroidx/renderscript/Element;

    .line 518
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static F64_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 522
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_4:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 523
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_64:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_4:Landroidx/renderscript/Element;

    .line 525
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I16(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 2

    .line 360
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I16:Landroidx/renderscript/Element;

    if-nez v0, :cond_c

    .line 361
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I16:Landroidx/renderscript/Element;

    .line 363
    :cond_c
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_I16:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I16_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 592
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_2:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 593
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_2:Landroidx/renderscript/Element;

    .line 595
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I16_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 599
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_3:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 600
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_3:Landroidx/renderscript/Element;

    .line 602
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I16_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 606
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_4:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 607
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_4:Landroidx/renderscript/Element;

    .line 609
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 2

    .line 374
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I32:Landroidx/renderscript/Element;

    if-nez v0, :cond_c

    .line 375
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I32:Landroidx/renderscript/Element;

    .line 377
    :cond_c
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_I32:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 634
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_2:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 635
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_2:Landroidx/renderscript/Element;

    .line 637
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I32_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 641
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_3:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 642
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_3:Landroidx/renderscript/Element;

    .line 644
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I32_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 648
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_4:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 649
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_4:Landroidx/renderscript/Element;

    .line 651
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 2

    .line 388
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I64:Landroidx/renderscript/Element;

    if-nez v0, :cond_c

    .line 389
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_64:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I64:Landroidx/renderscript/Element;

    .line 391
    :cond_c
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_I64:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 676
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_2:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 677
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_64:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_2:Landroidx/renderscript/Element;

    .line 679
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I64_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 683
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_3:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 684
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_64:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_3:Landroidx/renderscript/Element;

    .line 686
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I64_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 690
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_4:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 691
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_64:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_4:Landroidx/renderscript/Element;

    .line 693
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 2

    .line 346
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I8:Landroidx/renderscript/Element;

    if-nez v0, :cond_c

    .line 347
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I8:Landroidx/renderscript/Element;

    .line 349
    :cond_c
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_I8:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I8_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 550
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_2:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 551
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_2:Landroidx/renderscript/Element;

    .line 553
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I8_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 557
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_3:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 558
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_3:Landroidx/renderscript/Element;

    .line 560
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static I8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 564
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_4:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 565
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_4:Landroidx/renderscript/Element;

    .line 567
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static MATRIX_2X2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 2

    .line 711
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroidx/renderscript/Element;

    if-nez v0, :cond_c

    .line 712
    sget-object v0, Landroidx/renderscript/Element$DataType;->MATRIX_2X2:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroidx/renderscript/Element;

    .line 714
    :cond_c
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static MATRIX_3X3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 2

    .line 704
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroidx/renderscript/Element;

    if-nez v0, :cond_c

    .line 705
    sget-object v0, Landroidx/renderscript/Element$DataType;->MATRIX_3X3:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroidx/renderscript/Element;

    .line 707
    :cond_c
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static MATRIX_4X4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 2

    .line 697
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroidx/renderscript/Element;

    if-nez v0, :cond_c

    .line 698
    sget-object v0, Landroidx/renderscript/Element$DataType;->MATRIX_4X4:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroidx/renderscript/Element;

    .line 700
    :cond_c
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static RGBA_4444(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 473
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_4444:Landroidx/renderscript/Element;

    if-nez v0, :cond_e

    .line 474
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_4444:Landroidx/renderscript/Element;

    .line 476
    :cond_e
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_4444:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static RGBA_5551(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 466
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_5551:Landroidx/renderscript/Element;

    if-nez v0, :cond_e

    .line 467
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_5551:Landroidx/renderscript/Element;

    .line 469
    :cond_e
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_5551:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static RGBA_8888(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 480
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_8888:Landroidx/renderscript/Element;

    if-nez v0, :cond_e

    .line 481
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_8888:Landroidx/renderscript/Element;

    .line 483
    :cond_e
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_8888:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static RGB_565(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 452
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGB_565:Landroidx/renderscript/Element;

    if-nez v0, :cond_e

    .line 453
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_RGB:Landroidx/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGB_565:Landroidx/renderscript/Element;

    .line 455
    :cond_e
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_RGB_565:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static RGB_888(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 459
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGB_888:Landroidx/renderscript/Element;

    if-nez v0, :cond_e

    .line 460
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_RGB:Landroidx/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGB_888:Landroidx/renderscript/Element;

    .line 462
    :cond_e
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_RGB_888:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static SAMPLER(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 2

    .line 430
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SAMPLER:Landroidx/renderscript/Element;

    if-nez v0, :cond_c

    .line 431
    sget-object v0, Landroidx/renderscript/Element$DataType;->RS_SAMPLER:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SAMPLER:Landroidx/renderscript/Element;

    .line 433
    :cond_c
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_SAMPLER:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static SCRIPT(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 2

    .line 437
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SCRIPT:Landroidx/renderscript/Element;

    if-nez v0, :cond_c

    .line 438
    sget-object v0, Landroidx/renderscript/Element$DataType;->RS_SCRIPT:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SCRIPT:Landroidx/renderscript/Element;

    .line 440
    :cond_c
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_SCRIPT:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static TYPE(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 2

    .line 416
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_TYPE:Landroidx/renderscript/Element;

    if-nez v0, :cond_c

    .line 417
    sget-object v0, Landroidx/renderscript/Element$DataType;->RS_TYPE:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_TYPE:Landroidx/renderscript/Element;

    .line 419
    :cond_c
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_TYPE:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U16(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 2

    .line 353
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U16:Landroidx/renderscript/Element;

    if-nez v0, :cond_c

    .line 354
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U16:Landroidx/renderscript/Element;

    .line 356
    :cond_c
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_U16:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U16_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 571
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_2:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 572
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_2:Landroidx/renderscript/Element;

    .line 574
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U16_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 578
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_3:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 579
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_3:Landroidx/renderscript/Element;

    .line 581
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U16_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 585
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_4:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 586
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_4:Landroidx/renderscript/Element;

    .line 588
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 2

    .line 367
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U32:Landroidx/renderscript/Element;

    if-nez v0, :cond_c

    .line 368
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_32:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U32:Landroidx/renderscript/Element;

    .line 370
    :cond_c
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_U32:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 613
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_2:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 614
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_32:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_2:Landroidx/renderscript/Element;

    .line 616
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U32_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 620
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_3:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 621
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_32:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_3:Landroidx/renderscript/Element;

    .line 623
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U32_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 627
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_4:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 628
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_32:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_4:Landroidx/renderscript/Element;

    .line 630
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 2

    .line 381
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U64:Landroidx/renderscript/Element;

    if-nez v0, :cond_c

    .line 382
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_64:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U64:Landroidx/renderscript/Element;

    .line 384
    :cond_c
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_U64:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 655
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_2:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 656
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_64:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_2:Landroidx/renderscript/Element;

    .line 658
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U64_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 662
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_3:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 663
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_64:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_3:Landroidx/renderscript/Element;

    .line 665
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U64_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 669
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_4:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 670
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_64:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_4:Landroidx/renderscript/Element;

    .line 672
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 2

    .line 332
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U8:Landroidx/renderscript/Element;

    if-nez v0, :cond_c

    .line 333
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U8:Landroidx/renderscript/Element;

    .line 335
    :cond_c
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_U8:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U8_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 529
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_2:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 530
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_2:Landroidx/renderscript/Element;

    .line 532
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_2:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U8_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 536
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_3:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 537
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_3:Landroidx/renderscript/Element;

    .line 539
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_3:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .registers 3

    .line 543
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_4:Landroidx/renderscript/Element;

    if-nez v0, :cond_d

    .line 544
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_4:Landroidx/renderscript/Element;

    .line 546
    :cond_d
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_4:Landroidx/renderscript/Element;

    return-object p0
.end method

.method public static createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;
    .registers 13

    .line 837
    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_L:Landroidx/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_25

    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_A:Landroidx/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_25

    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_LA:Landroidx/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_25

    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_RGB:Landroidx/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_25

    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_25

    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroidx/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_25

    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_YUV:Landroidx/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_1d

    goto :goto_25

    .line 844
    :cond_1d
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p1, "Unsupported DataKind"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 846
    :cond_25
    :goto_25
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    if-eq p1, v0, :cond_42

    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    if-eq p1, v0, :cond_42

    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroidx/renderscript/Element$DataType;

    if-eq p1, v0, :cond_42

    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroidx/renderscript/Element$DataType;

    if-eq p1, v0, :cond_42

    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroidx/renderscript/Element$DataType;

    if-ne p1, v0, :cond_3a

    goto :goto_42

    .line 851
    :cond_3a
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p1, "Unsupported DataType"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 853
    :cond_42
    :goto_42
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroidx/renderscript/Element$DataType;

    const-string v1, "Bad kind and type combo"

    if-ne p1, v0, :cond_53

    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_RGB:Landroidx/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_4d

    goto :goto_53

    .line 854
    :cond_4d
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    invoke-direct {p0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 856
    :cond_53
    :goto_53
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroidx/renderscript/Element$DataType;

    if-ne p1, v0, :cond_62

    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_5c

    goto :goto_62

    .line 857
    :cond_5c
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    invoke-direct {p0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 859
    :cond_62
    :goto_62
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroidx/renderscript/Element$DataType;

    if-ne p1, v0, :cond_71

    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_6b

    goto :goto_71

    .line 860
    :cond_6b
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    invoke-direct {p0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 862
    :cond_71
    :goto_71
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    if-ne p1, v0, :cond_80

    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroidx/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_7a

    goto :goto_80

    .line 864
    :cond_7a
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    invoke-direct {p0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 868
    :cond_80
    :goto_80
    sget-object v0, Landroidx/renderscript/Element$1;->$SwitchMap$androidx$renderscript$Element$DataKind:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_98

    if-eq v0, v2, :cond_96

    if-eq v0, v1, :cond_93

    const/4 v9, 0x1

    goto :goto_99

    :cond_93
    const/4 v1, 0x4

    const/4 v9, 0x4

    goto :goto_99

    :cond_96
    const/4 v9, 0x3

    goto :goto_99

    :cond_98
    const/4 v9, 0x2

    :goto_99
    const/4 v8, 0x1

    .line 881
    iget v0, p1, Landroidx/renderscript/Element$DataType;->mID:I

    int-to-long v3, v0

    iget v5, p2, Landroidx/renderscript/Element$DataKind;->mID:I

    const/4 v6, 0x1

    move-object v2, p0

    move v7, v9

    invoke-virtual/range {v2 .. v7}, Landroidx/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v3

    .line 882
    new-instance v0, Landroidx/renderscript/Element;

    move-object v2, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v9}, Landroidx/renderscript/Element;-><init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;ZI)V

    return-object v0
.end method

.method static createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;
    .registers 14

    .line 773
    sget-object v5, Landroidx/renderscript/Element$DataKind;->USER:Landroidx/renderscript/Element$DataKind;

    .line 776
    iget v0, p1, Landroidx/renderscript/Element$DataType;->mID:I

    int-to-long v7, v0

    iget v9, v5, Landroidx/renderscript/Element$DataKind;->mID:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Landroidx/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v1

    .line 777
    new-instance v8, Landroidx/renderscript/Element;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Landroidx/renderscript/Element;-><init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;ZI)V

    return-object v8
.end method

.method public static createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;
    .registers 13

    const/4 v0, 0x2

    if-lt p2, v0, :cond_34

    const/4 v0, 0x4

    if-gt p2, v0, :cond_34

    .line 798
    sget-object v0, Landroidx/renderscript/Element$1;->$SwitchMap$androidx$renderscript$Element$DataType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    .line 818
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v1, "Cannot create vector of non-primitive type."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :pswitch_19  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb
    sget-object v6, Landroidx/renderscript/Element$DataKind;->USER:Landroidx/renderscript/Element$DataKind;

    const/4 v8, 0x0

    .line 813
    iget v0, p1, Landroidx/renderscript/Element$DataType;->mID:I

    int-to-long v1, v0

    iget v3, v6, Landroidx/renderscript/Element$DataKind;->mID:I

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v1

    .line 814
    new-instance v9, Landroidx/renderscript/Element;

    move-object v0, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, v6

    move v6, v8

    move v7, p2

    invoke-direct/range {v0 .. v7}, Landroidx/renderscript/Element;-><init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;ZI)V

    return-object v9

    .line 795
    :cond_34
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v1, "Vector size out of range 2-4."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_19  #00000001
        :pswitch_19  #00000002
        :pswitch_19  #00000003
        :pswitch_19  #00000004
        :pswitch_19  #00000005
        :pswitch_19  #00000006
        :pswitch_19  #00000007
        :pswitch_19  #00000008
        :pswitch_19  #00000009
        :pswitch_19  #0000000a
        :pswitch_19  #0000000b
    .end packed-switch
.end method

.method private updateVisibleSubElements()V
    .registers 8

    .line 75
    iget-object v0, p0, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    if-nez v0, :cond_5

    return-void

    .line 80
    :cond_5
    iget-object v0, p0, Landroidx/renderscript/Element;->mElementNames:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    const/16 v4, 0x23

    if-ge v2, v0, :cond_1e

    .line 83
    iget-object v5, p0, Landroidx/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_1b

    add-int/lit8 v3, v3, 0x1

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 87
    :cond_1e
    new-array v2, v3, [I

    iput-object v2, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_24
    if-ge v2, v0, :cond_3a

    .line 91
    iget-object v5, p0, Landroidx/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_37

    .line 92
    iget-object v5, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    add-int/lit8 v6, v3, 0x1

    aput v2, v5, v3

    move v3, v6

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_3a
    return-void
.end method


# virtual methods
.method public getBytesSize()I
    .registers 2

    .line 101
    iget v0, p0, Landroidx/renderscript/Element;->mSize:I

    return v0
.end method

.method public getDataKind()Landroidx/renderscript/Element$DataKind;
    .registers 2

    .line 307
    iget-object v0, p0, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    return-object v0
.end method

.method public getDataType()Landroidx/renderscript/Element$DataType;
    .registers 2

    .line 300
    iget-object v0, p0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    return-object v0
.end method

.method public getDummyElement(Landroidx/renderscript/RenderScript;)J
    .registers 9

    .line 762
    iget-object v0, p0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    iget v0, v0, Landroidx/renderscript/Element$DataType;->mID:I

    int-to-long v2, v0

    iget-object v0, p0, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    iget v4, v0, Landroidx/renderscript/Element$DataKind;->mID:I

    iget-boolean v5, p0, Landroidx/renderscript/Element;->mNormalized:Z

    iget v6, p0, Landroidx/renderscript/Element;->mVectorSize:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/renderscript/RenderScript;->nIncElementCreate(JIZI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSubElement(I)Landroidx/renderscript/Element;
    .registers 4

    .line 238
    iget-object v0, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    if-eqz v0, :cond_18

    if-ltz p1, :cond_10

    .line 241
    array-length v1, v0

    if-ge p1, v1, :cond_10

    .line 244
    iget-object v1, p0, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    aget p1, v0, p1

    aget-object p1, v1, p1

    return-object p1

    .line 242
    :cond_10
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Illegal sub-element index"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 239
    :cond_18
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Element contains no sub-elements"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSubElementArraySize(I)I
    .registers 4

    .line 271
    iget-object v0, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    if-eqz v0, :cond_18

    if-ltz p1, :cond_10

    .line 274
    array-length v1, v0

    if-ge p1, v1, :cond_10

    .line 277
    iget-object v1, p0, Landroidx/renderscript/Element;->mArraySizes:[I

    aget p1, v0, p1

    aget p1, v1, p1

    return p1

    .line 275
    :cond_10
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Illegal sub-element index"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 272
    :cond_18
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Element contains no sub-elements"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSubElementCount()I
    .registers 2

    .line 225
    iget-object v0, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 228
    :cond_6
    array-length v0, v0

    return v0
.end method

.method public getSubElementName(I)Ljava/lang/String;
    .registers 4

    .line 254
    iget-object v0, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    if-eqz v0, :cond_18

    if-ltz p1, :cond_10

    .line 257
    array-length v1, v0

    if-ge p1, v1, :cond_10

    .line 260
    iget-object v1, p0, Landroidx/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget p1, v0, p1

    aget-object p1, v1, p1

    return-object p1

    .line 258
    :cond_10
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Illegal sub-element index"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_18
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Element contains no sub-elements"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSubElementOffsetBytes(I)I
    .registers 4

    .line 287
    iget-object v0, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    if-eqz v0, :cond_18

    if-ltz p1, :cond_10

    .line 290
    array-length v1, v0

    if-ge p1, v1, :cond_10

    .line 293
    iget-object v1, p0, Landroidx/renderscript/Element;->mOffsetInBytes:[I

    aget p1, v0, p1

    aget p1, v1, p1

    return p1

    .line 291
    :cond_10
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Illegal sub-element index"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 288
    :cond_18
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Element contains no sub-elements"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getVectorSize()I
    .registers 2

    .line 110
    iget v0, p0, Landroidx/renderscript/Element;->mVectorSize:I

    return v0
.end method

.method public isCompatible(Landroidx/renderscript/Element;)Z
    .registers 5

    .line 898
    invoke-virtual {p0, p1}, Landroidx/renderscript/BaseObj;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 906
    :cond_8
    iget v0, p0, Landroidx/renderscript/Element;->mSize:I

    iget v2, p1, Landroidx/renderscript/Element;->mSize:I

    if-ne v0, v2, :cond_1f

    iget-object v0, p0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    sget-object v2, Landroidx/renderscript/Element$DataType;->NONE:Landroidx/renderscript/Element$DataType;

    if-eq v0, v2, :cond_1f

    iget-object v2, p1, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    if-ne v0, v2, :cond_1f

    iget v0, p0, Landroidx/renderscript/Element;->mVectorSize:I

    iget p1, p1, Landroidx/renderscript/Element;->mVectorSize:I

    if-ne v0, p1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return v1
.end method

.method public isComplex()Z
    .registers 5

    .line 206
    iget-object v0, p0, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    .line 209
    :goto_7
    iget-object v2, p0, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    array-length v3, v2

    if-ge v0, v3, :cond_17

    .line 210
    aget-object v2, v2, v0

    iget-object v2, v2, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    if-eqz v2, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_17
    return v1
.end method
