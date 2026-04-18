.class public Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/customview/keyboard/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field public defaultHeight:I

.field public defaultHorizontalGap:I

.field public defaultWidth:I

.field mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field public mode:I

.field private parent:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

.field public rowEdgeFlags:I

.field public verticalGap:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/codemao/creativecenter/customview/keyboard/Keyboard;Landroid/content/res/XmlResourceParser;)V
    .registers 8

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    .line 196
    iput-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->parent:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    .line 197
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 199
    sget v1, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_android_keyWidth:I

    .line 201
    invoke-static {p2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->access$000(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)I

    move-result v2

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->access$100(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)I

    move-result v3

    .line 199
    invoke-static {v0, v1, v2, v3}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->defaultWidth:I

    .line 202
    sget v1, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_android_keyHeight:I

    .line 204
    invoke-static {p2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->access$200(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)I

    move-result v2

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->access$300(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)I

    move-result v3

    .line 202
    invoke-static {v0, v1, v2, v3}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->defaultHeight:I

    .line 205
    sget v1, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_android_horizontalGap:I

    .line 207
    invoke-static {p2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->access$000(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)I

    move-result v2

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->access$400(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)I

    move-result v3

    .line 205
    invoke-static {v0, v1, v2, v3}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->defaultHorizontalGap:I

    .line 208
    sget v1, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_android_verticalGap:I

    .line 210
    invoke-static {p2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->access$200(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)I

    move-result v2

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->access$500(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)I

    move-result p2

    .line 208
    invoke-static {v0, v1, v2, p2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->verticalGap:I

    .line 211
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object p3, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_Row:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 214
    sget p2, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_Row_android_rowEdgeFlags:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->rowEdgeFlags:I

    .line 215
    sget p2, Lcom/codemao/creativecenter/R$styleable;->Creative_Keyboard_Row_android_keyboardMode:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->mode:I

    return-void
.end method

.method public constructor <init>(Lcom/codemao/creativecenter/customview/keyboard/Keyboard;)V
    .registers 3

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    .line 192
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->parent:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    return-void
.end method

.method static synthetic access$600(Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;)Lcom/codemao/creativecenter/customview/keyboard/Keyboard;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Row;->parent:Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    return-object p0
.end method
