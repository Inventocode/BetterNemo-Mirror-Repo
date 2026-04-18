.class public final Lcom/ljwx/baseedittext/StatusEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "StatusEditText.kt"


# instance fields
.field private invalid:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onCreateDrawableState(I)[I
    .registers 5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 31
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 32
    iget-boolean v1, p0, Lcom/ljwx/baseedittext/StatusEditText;->invalid:Z

    if-eqz v1, :cond_14

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 33
    sget v2, Lcom/ljwx/baseedittext/R$attr;->content_invalid:I

    aput v2, v0, v1

    invoke-static {p1, v0}, Landroid/widget/EditText;->mergeDrawableStates([I[I)[I

    :cond_14
    const-string v0, "drawableState"

    .line 35
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
