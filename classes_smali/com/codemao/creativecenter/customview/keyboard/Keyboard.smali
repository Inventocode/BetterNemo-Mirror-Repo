.class public Lcom/codemao/creativecenter/customview/keyboard/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;,
        Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;
    }
.end annotation


# static fields
.field private static SEARCH_DISTANCE:F = 1.8f


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mDefaultHeight:I

.field private mDefaultHorizontalGap:I

.field private mDefaultVerticalGap:I

.field private mDefaultWidth:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mGridNeighbors:[[I

.field private mKeyboardMode:I

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityThreshold:I

.field private mShiftKeyIndices:[I

.field private mShiftKeys:[Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

.field private mShifted:Z

.field private mTotalHeight:I

.field private mTotalWidth:I

.field private rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x0

    .line 529
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 9

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 108
    iput-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mShiftKeys:[Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    new-array v0, v0, [I

    .line 111
    fill-array-data v0, :array_54

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mShiftKeyIndices:[I

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->rows:Ljava/util/ArrayList;

    .line 564
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 565
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDisplayWidth:I

    .line 566
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDisplayHeight:I

    .line 569
    iput v2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultHorizontalGap:I

    .line 570
    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultWidth:I

    .line 571
    iput v2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultVerticalGap:I

    .line 572
    iput v1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultHeight:I

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mKeys:Ljava/util/List;

    .line 574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 575
    iput p3, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mKeyboardMode:I

    .line 576
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    return-void

    nop

    :array_54
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .registers 14

    .line 595
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 599
    iput p1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mTotalWidth:I

    .line 601
    new-instance p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;-><init>(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)V

    .line 602
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultHeight:I

    iput v0, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->defaultHeight:I

    .line 603
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultWidth:I

    iput v0, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->defaultWidth:I

    .line 604
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultHorizontalGap:I

    iput v0, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->defaultHorizontalGap:I

    .line 605
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultVerticalGap:I

    iput v0, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->verticalGap:I

    const/16 v0, 0xc

    .line 606
    iput v0, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->rowEdgeFlags:I

    const/4 v0, -0x1

    if-ne p4, v0, :cond_25

    const p4, 0x7fffffff

    :cond_25
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 608
    :goto_29
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v0, v4, :cond_75

    .line 609
    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v2, p4, :cond_3d

    .line 610
    iget v5, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultWidth:I

    add-int/2addr v5, v3

    add-int/2addr v5, p5

    iget v6, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDisplayWidth:I

    if-le v5, v6, :cond_45

    .line 613
    :cond_3d
    iget v2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultVerticalGap:I

    iget v3, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultHeight:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 616
    :cond_45
    new-instance v5, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    invoke-direct {v5, p2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;-><init>(Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;)V

    .line 617
    iput v3, v5, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    .line 618
    iput v1, v5, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->y:I

    .line 619
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v6, 0x1

    new-array v7, v6, [I

    aput v4, v7, p1

    .line 620
    iput-object v7, v5, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    add-int/2addr v2, v6

    .line 622
    iget v4, v5, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    iget v6, v5, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->gap:I

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    .line 623
    iget-object v4, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    iget-object v4, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    iget v4, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mTotalWidth:I

    if-le v3, v4, :cond_72

    .line 626
    iput v3, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mTotalWidth:I

    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 629
    :cond_75
    iget p1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultHeight:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mTotalHeight:I

    .line 630
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)I
    .registers 1

    .line 68
    iget p0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDisplayWidth:I

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)I
    .registers 1

    .line 68
    iget p0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultWidth:I

    return p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)I
    .registers 1

    .line 68
    iget p0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDisplayHeight:I

    return p0
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)I
    .registers 1

    .line 68
    iget p0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultHeight:I

    return p0
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)I
    .registers 1

    .line 68
    iget p0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultHorizontalGap:I

    return p0
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)I
    .registers 1

    .line 68
    iget p0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultVerticalGap:I

    return p0
.end method

.method private computeNearestNeighbors()V
    .registers 12

    .line 746
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getMinWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mCellWidth:I

    .line 747
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mCellHeight:I

    const/16 v0, 0x32

    new-array v0, v0, [[I

    .line 748
    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mGridNeighbors:[[I

    .line 749
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 750
    iget v1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mCellWidth:I

    mul-int/lit8 v1, v1, 0xa

    .line 751
    iget v2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mCellHeight:I

    mul-int/lit8 v2, v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v1, :cond_9d

    const/4 v5, 0x0

    :goto_33
    if-ge v5, v2, :cond_99

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 755
    :goto_37
    iget-object v8, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_83

    .line 756
    iget-object v8, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    .line 757
    invoke-virtual {v8, v4, v5}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v9

    iget v10, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mProximityThreshold:I

    if-lt v9, v10, :cond_7b

    iget v9, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mCellWidth:I

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x1

    .line 758
    invoke-virtual {v8, v9, v5}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v9

    iget v10, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mProximityThreshold:I

    if-lt v9, v10, :cond_7b

    iget v9, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mCellWidth:I

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mCellHeight:I

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, -0x1

    .line 759
    invoke-virtual {v8, v9, v10}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v9

    iget v10, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mProximityThreshold:I

    if-lt v9, v10, :cond_7b

    iget v9, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mCellHeight:I

    add-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    .line 761
    invoke-virtual {v8, v4, v9}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    iget v9, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mProximityThreshold:I

    if-ge v8, v9, :cond_80

    :cond_7b
    add-int/lit8 v8, v7, 0x1

    .line 762
    aput v6, v0, v7

    move v7, v8

    :cond_80
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 765
    :cond_83
    new-array v6, v7, [I

    .line 766
    invoke-static {v0, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    iget-object v7, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mGridNeighbors:[[I

    iget v8, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mCellHeight:I

    div-int v9, v5, v8

    mul-int/lit8 v9, v9, 0xa

    iget v10, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mCellWidth:I

    div-int v10, v4, v10

    add-int/2addr v9, v10

    aput-object v6, v7, v9

    add-int/2addr v5, v8

    goto :goto_33

    .line 752
    :cond_99
    iget v5, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mCellWidth:I

    add-int/2addr v4, v5

    goto :goto_30

    :cond_9d
    return-void
.end method

.method static getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .registers 6

    .line 904
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    if-nez v0, :cond_7

    return p3

    .line 906
    :cond_7
    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    .line 907
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p0

    return p0

    :cond_11
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1e

    int-to-float p3, p3

    .line 910
    invoke-virtual {p0, p1, p2, p2, p3}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_1e
    return p3
.end method

.method private loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 16

    const-string v0, "Keyboard"

    .line 808
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v8, v1

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_b
    const/4 v10, 0x0

    :goto_c
    const/4 v11, 0x0

    .line 813
    :cond_d
    :goto_d
    :try_start_d
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v12, 0x1

    if-eq v3, v12, :cond_d4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9d

    .line 815
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Row"

    .line 816
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 819
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;

    move-result-object v3

    .line 820
    iget-object v4, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    iget v4, v3, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->mode:I

    if-eqz v4, :cond_36

    iget v5, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mKeyboardMode:I

    if-eq v4, v5, :cond_36

    const/4 v4, 0x1

    goto :goto_37

    :cond_36
    const/4 v4, 0x0

    :goto_37
    if-eqz v4, :cond_3e

    .line 823
    invoke-direct {p0, p2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V

    move-object v8, v3

    goto :goto_b

    :cond_3e
    move-object v8, v3

    const/4 v10, 0x1

    goto :goto_c

    :cond_41
    const-string v4, "Key"

    .line 826
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    move-object v1, p0

    move-object v2, p1

    move-object v3, v8

    move v4, v11

    move v5, v9

    move-object v6, p2

    .line 828
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->createKeyFromXml(Landroid/content/res/Resources;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    move-result-object v1

    .line 829
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    iget-object v2, v1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    aget v3, v2, v7

    const/4 v4, -0x1

    if-ne v3, v4, :cond_80

    const/4 v2, 0x0

    .line 832
    :goto_60
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mShiftKeys:[Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    array-length v4, v3

    if-ge v2, v4, :cond_7a

    .line 833
    aget-object v4, v3, v2

    if-nez v4, :cond_77

    .line 834
    aput-object v1, v3, v2

    .line 835
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mShiftKeyIndices:[I

    iget-object v4, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v12

    aput v4, v3, v2

    goto :goto_7a

    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 839
    :cond_7a
    :goto_7a
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 840
    :cond_80
    aget v2, v2, v7

    const/4 v3, -0x6

    if-ne v2, v3, :cond_8a

    .line 841
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    :cond_8a
    :goto_8a
    iget-object v2, v8, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto/16 :goto_d

    .line 844
    :cond_92
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 845
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto/16 :goto_d

    :cond_9d
    const/4 v4, 0x3

    if-ne v3, v4, :cond_d

    if-eqz v2, :cond_b1

    .line 850
    iget v2, v1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->gap:I

    iget v3, v1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    add-int/2addr v11, v2

    .line 851
    iget v2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mTotalWidth:I

    if-le v11, v2, :cond_ae

    .line 852
    iput v11, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mTotalWidth:I

    :cond_ae
    const/4 v2, 0x0

    goto/16 :goto_d

    :cond_b1
    if-eqz v10, :cond_d

    .line 856
    iget v3, v8, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->verticalGap:I

    add-int/2addr v9, v3

    .line 857
    iget v3, v8, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->defaultHeight:I
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_b8} :catch_bc

    add-int/2addr v9, v3

    const/4 v10, 0x0

    goto/16 :goto_d

    :catch_bc
    move-exception p1

    .line 865
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parse error:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 868
    :cond_d4
    iget p1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultVerticalGap:I

    sub-int/2addr v9, p1

    iput v9, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mTotalHeight:I

    return-void
.end method

.method private parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 5

    .line 883
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 886
    sget p2, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_android_keyWidth:I

    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDisplayWidth:I

    div-int/lit8 v1, v0, 0xa

    invoke-static {p1, p2, v0, v1}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultWidth:I

    .line 889
    sget p2, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_android_keyHeight:I

    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDisplayHeight:I

    const/16 v1, 0x32

    invoke-static {p1, p2, v0, v1}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultHeight:I

    .line 892
    sget p2, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_android_horizontalGap:I

    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDisplayWidth:I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultHorizontalGap:I

    .line 895
    sget p2, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_android_verticalGap:I

    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDisplayHeight:I

    invoke-static {p1, p2, v0, v1}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultVerticalGap:I

    .line 898
    iget p2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mDefaultWidth:I

    int-to-float p2, p2

    sget v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->SEARCH_DISTANCE:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mProximityThreshold:I

    mul-int p2, p2, p2

    .line 899
    iput p2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mProximityThreshold:I

    .line 900
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 874
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 876
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_16
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;
    .registers 13

    .line 796
    new-instance v6, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;-><init>(Landroid/content/res/Resources;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    return-object v6
.end method

.method protected createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;
    .registers 4

    .line 791
    new-instance v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;

    invoke-direct {v0, p1, p0, p2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;-><init>(Landroid/content/res/Resources;Lcom/codemao/creativecenter/customview/keyboard/Keyboard;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 709
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mTotalHeight:I

    return v0
.end method

.method public getKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getMinWidth()I
    .registers 2

    .line 713
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mTotalWidth:I

    return v0
.end method

.method public getNearestKeys(II)[I
    .registers 4

    .line 780
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mGridNeighbors:[[I

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->computeNearestNeighbors()V

    :cond_7
    if-ltz p1, :cond_29

    .line 781
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getMinWidth()I

    move-result v0

    if-ge p1, v0, :cond_29

    if-ltz p2, :cond_29

    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_29

    .line 782
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mCellHeight:I

    div-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0xa

    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mCellWidth:I

    div-int/2addr p1, v0

    add-int/2addr p2, p1

    const/16 p1, 0x32

    if-ge p2, p1, :cond_29

    .line 784
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mGridNeighbors:[[I

    aget-object p1, p1, p2

    return-object p1

    :cond_29
    const/4 p1, 0x0

    new-array p1, p1, [I

    return-object p1
.end method

.method public isShifted()Z
    .registers 2

    .line 730
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mShifted:Z

    return v0
.end method

.method final resize(II)V
    .registers 12

    .line 634
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, p2, :cond_59

    .line 636
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;

    .line 637
    iget-object v3, v2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1b
    if-ge v4, v3, :cond_30

    .line 641
    iget-object v7, v2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    if-lez v4, :cond_2a

    .line 643
    iget v8, v7, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->gap:I

    add-int/2addr v5, v8

    .line 645
    :cond_2a
    iget v7, v7, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_30
    add-int v4, v5, v6

    if-le v4, p1, :cond_56

    sub-int v4, p1, v5

    int-to-float v4, v4

    int-to-float v5, v6

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3b
    if-ge v5, v3, :cond_56

    .line 651
    iget-object v7, v2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    .line 652
    iget v8, v7, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    int-to-float v8, v8

    mul-float v8, v8, v4

    float-to-int v8, v8

    iput v8, v7, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    .line 653
    iput v6, v7, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    .line 654
    iget v7, v7, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->gap:I

    add-int/2addr v8, v7

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 658
    :cond_59
    iput p1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mTotalWidth:I

    return-void
.end method

.method public setShifted(Z)Z
    .registers 7

    .line 717
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mShiftKeys:[Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_10

    aget-object v4, v0, v3

    if-eqz v4, :cond_d

    .line 719
    iput-boolean p1, v4, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->on:Z

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 722
    :cond_10
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mShifted:Z

    if-eq v0, p1, :cond_18

    .line 723
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->mShifted:Z

    const/4 p1, 0x1

    return p1

    :cond_18
    return v2
.end method
