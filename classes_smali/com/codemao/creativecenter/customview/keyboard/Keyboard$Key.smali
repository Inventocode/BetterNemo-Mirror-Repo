.class public Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/customview/keyboard/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final KEY_STATE_NORMAL:[I

.field private static final KEY_STATE_NORMAL_OFF:[I

.field private static final KEY_STATE_NORMAL_ON:[I

.field private static final KEY_STATE_PRESSED:[I

.field private static final KEY_STATE_PRESSED_OFF:[I

.field private static final KEY_STATE_PRESSED_ON:[I


# instance fields
.field public codes:[I

.field public edgeFlags:I

.field public gap:I

.field public height:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconPreview:Landroid/graphics/drawable/Drawable;

.field private keyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

.field public label:Ljava/lang/CharSequence;

.field public on:Z

.field public popupCharacters:Ljava/lang/CharSequence;

.field public popupResId:I

.field public pressed:Z

.field public repeatable:Z

.field public sticky:Z

.field public text:Ljava/lang/CharSequence;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 293
    fill-array-data v1, :array_30

    sput-object v1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 298
    fill-array-data v1, :array_38

    sput-object v1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x101009f

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 304
    sput-object v2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    new-array v0, v0, [I

    .line 308
    fill-array-data v0, :array_42

    sput-object v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    new-array v0, v4, [I

    .line 313
    sput-object v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->KEY_STATE_NORMAL:[I

    new-array v0, v1, [I

    const v1, 0x10100a7

    aput v1, v0, v4

    .line 316
    sput-object v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->KEY_STATE_PRESSED:[I

    return-void

    :array_30
    .array-data 4
        0x101009f
        0x10100a0
    .end array-data

    :array_38
    .array-data 4
        0x10100a7
        0x101009f
        0x10100a0
    .end array-data

    :array_42
    .array-data 4
        0x10100a7
        0x101009f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .registers 8

    .line 339
    invoke-direct {p0, p2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;-><init>(Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;)V

    .line 341
    iput p3, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    .line 342
    iput p4, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->y:I

    .line 344
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    sget-object p4, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 347
    sget p4, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_android_keyWidth:I

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->keyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    .line 349
    invoke-static {v0}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->access$000(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)I

    move-result v0

    iget v1, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->defaultWidth:I

    .line 347
    invoke-static {p3, p4, v0, v1}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p4

    iput p4, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    .line 350
    sget p4, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_android_keyHeight:I

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->keyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    .line 352
    invoke-static {v0}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->access$200(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)I

    move-result v0

    iget v1, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->defaultHeight:I

    .line 350
    invoke-static {p3, p4, v0, v1}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p4

    iput p4, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->height:I

    .line 353
    sget p4, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_android_horizontalGap:I

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->keyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    .line 355
    invoke-static {v0}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->access$000(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)I

    move-result v0

    iget v1, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->defaultHorizontalGap:I

    .line 353
    invoke-static {p3, p4, v0, v1}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p4

    iput p4, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->gap:I

    .line 356
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 357
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    sget-object p4, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_Key:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 359
    iget p3, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    iget p4, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->gap:I

    add-int/2addr p3, p4

    iput p3, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    .line 360
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 361
    sget p4, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_Key_android_codes:I

    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 363
    iget p4, p3, Landroid/util/TypedValue;->type:I

    const/4 p5, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-eq p4, v1, :cond_7c

    const/16 v1, 0x11

    if-ne p4, v1, :cond_6c

    goto :goto_7c

    :cond_6c
    const/4 v1, 0x3

    if-ne p4, v1, :cond_84

    .line 367
    iget-object p3, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object p3

    iput-object p3, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    goto :goto_84

    :cond_7c
    :goto_7c
    new-array p4, p5, [I

    .line 365
    iget p3, p3, Landroid/util/TypedValue;->data:I

    aput p3, p4, v0

    iput-object p4, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    .line 370
    :cond_84
    :goto_84
    sget p3, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_Key_android_iconPreview:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_9b

    .line 372
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 373
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 372
    invoke-virtual {p3, v0, v0, p4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    :cond_9b
    sget p3, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_Key_android_popupCharacters:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 377
    sget p3, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_Key_android_popupKeyboard:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->popupResId:I

    .line 379
    sget p3, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_Key_android_isRepeatable:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->repeatable:Z

    .line 381
    sget p3, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_Key_android_isModifier:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 383
    sget p3, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_Key_android_isSticky:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->sticky:Z

    .line 385
    sget p3, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_Key_android_keyEdgeFlags:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->edgeFlags:I

    .line 386
    iget p2, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->rowEdgeFlags:I

    or-int/2addr p2, p3

    iput p2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->edgeFlags:I

    .line 388
    sget p2, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_Key_android_keyIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_e4

    .line 391
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    iget-object p4, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p4

    invoke-virtual {p2, v0, v0, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 393
    :cond_e4
    sget p2, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_Key_android_keyLabel:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 394
    sget p2, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_Key_android_keyOutputText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 396
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    if-nez p2, :cond_10c

    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_10c

    new-array p2, p5, [I

    .line 397
    iget-object p3, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    aput p3, p2, v0

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    .line 399
    :cond_10c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;)V
    .registers 3

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    invoke-static {p1}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->access$600(Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;)Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->keyboard:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    .line 323
    iget v0, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->defaultHeight:I

    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->height:I

    .line 324
    iget v0, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->defaultWidth:I

    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    .line 325
    iget v0, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->defaultHorizontalGap:I

    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->gap:I

    .line 326
    iget p1, p1, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->rowEdgeFlags:I

    iput p1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->edgeFlags:I

    return-void
.end method


# virtual methods
.method public getCurrentDrawableState()[I
    .registers 3

    .line 498
    sget-object v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->KEY_STATE_NORMAL:[I

    .line 500
    iget-boolean v1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->on:Z

    if-eqz v1, :cond_10

    .line 501
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_d

    .line 502
    sget-object v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    goto :goto_24

    .line 504
    :cond_d
    sget-object v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_24

    .line 507
    :cond_10
    iget-boolean v1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->sticky:Z

    if-eqz v1, :cond_1e

    .line 508
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1b

    .line 509
    sget-object v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_24

    .line 511
    :cond_1b
    sget-object v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_24

    .line 514
    :cond_1e
    iget-boolean v1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_24

    .line 515
    sget-object v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->KEY_STATE_PRESSED:[I

    :cond_24
    :goto_24
    return-object v0
.end method

.method public isInside(II)Z
    .registers 10

    .line 466
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    and-int/lit8 v4, v0, 0x2

    if-lez v4, :cond_11

    const/4 v4, 0x1

    goto :goto_12

    :cond_11
    const/4 v4, 0x0

    :goto_12
    and-int/lit8 v5, v0, 0x4

    if-lez v5, :cond_18

    const/4 v5, 0x1

    goto :goto_19

    :cond_18
    const/4 v5, 0x0

    :goto_19
    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 470
    :goto_20
    iget v6, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    if-ge p1, v6, :cond_2b

    if-eqz v1, :cond_49

    iget v1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    add-int/2addr v1, v6

    if-gt p1, v1, :cond_49

    :cond_2b
    iget v1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    add-int/2addr v1, v6

    if-lt p1, v1, :cond_34

    if-eqz v4, :cond_49

    if-lt p1, v6, :cond_49

    :cond_34
    iget p1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->y:I

    if-ge p2, p1, :cond_3f

    if-eqz v5, :cond_49

    iget v1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->height:I

    add-int/2addr v1, p1

    if-gt p2, v1, :cond_49

    :cond_3f
    iget v1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->height:I

    add-int/2addr v1, p1

    if-lt p2, v1, :cond_4a

    if-eqz v0, :cond_49

    if-lt p2, p1, :cond_49

    goto :goto_4a

    :cond_49
    return v2

    :cond_4a
    :goto_4a
    return v3
.end method

.method public onPressed()V
    .registers 2

    .line 408
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->pressed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->pressed:Z

    return-void
.end method

.method public onReleased(Z)V
    .registers 3

    .line 429
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->pressed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->pressed:Z

    .line 430
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->sticky:Z

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    .line 431
    iget-boolean p1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->on:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->on:Z

    :cond_12
    return-void
.end method

.method parseCSV(Ljava/lang/String;)[I
    .registers 7

    .line 438
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ","

    const/4 v2, 0x0

    if-lez v0, :cond_16

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_c
    add-int/2addr v3, v0

    .line 440
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_17

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_16
    const/4 v4, 0x0

    .line 444
    :cond_17
    new-array v0, v4, [I

    .line 446
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :goto_1e
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_49

    add-int/lit8 v1, v2, 0x1

    .line 449
    :try_start_26
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v2
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_30} :catch_31

    goto :goto_47

    .line 451
    :catch_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing keycodes "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Keyboard"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    move v2, v1

    goto :goto_1e

    :cond_49
    return-object v0
.end method

.method public squaredDistanceFrom(II)I
    .registers 5

    .line 487
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    iget v1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 488
    iget p1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->y:I

    iget v1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->height:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    sub-int/2addr p1, p2

    mul-int v0, v0, v0

    mul-int p1, p1, p1

    add-int/2addr v0, p1

    return v0
.end method
