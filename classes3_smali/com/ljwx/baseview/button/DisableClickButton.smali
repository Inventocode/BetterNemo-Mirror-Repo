.class public final Lcom/ljwx/baseview/button/DisableClickButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "DisableClickButton.kt"


# instance fields
.field private disableClick:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ljwx/baseview/button/DisableClickButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 16
    iput-boolean p3, p0, Lcom/ljwx/baseview/button/DisableClickButton;->disableClick:Z

    .line 19
    sget-object v0, Lcom/ljwx/baseview/R$styleable;->DisableClickButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr…eable.DisableClickButton)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget p2, Lcom/ljwx/baseview/R$styleable;->DisableClickButton_allowClickWhenDisabled:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/ljwx/baseview/button/DisableClickButton;->disableClick:Z

    .line 21
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p1, 0x11

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setGravity(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    .line 10
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/ljwx/baseview/button/DisableClickButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 26
    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/ljwx/baseview/button/DisableClickButton;->disableClick:Z

    if-eqz v0, :cond_f

    .line 27
    invoke-virtual {p0}, Landroid/widget/Button;->callOnClick()Z

    const/4 p1, 0x1

    return p1

    .line 30
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
