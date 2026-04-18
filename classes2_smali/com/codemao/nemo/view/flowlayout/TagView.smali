.class public Lcom/codemao/nemo/view/flowlayout/TagView;
.super Landroid/widget/FrameLayout;
.source "TagView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECK_STATE:[I


# instance fields
.field private isChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 14
    sput-object v0, Lcom/codemao/nemo/view/flowlayout/TagView;->CHECK_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getTagView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Lcom/codemao/nemo/view/flowlayout/TagView;->isChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 29
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 30
    invoke-virtual {p0}, Lcom/codemao/nemo/view/flowlayout/TagView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 32
    sget-object v0, Lcom/codemao/nemo/view/flowlayout/TagView;->CHECK_STATE:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_11
    return-object p1
.end method

.method public setChecked(Z)V
    .registers 3

    .line 46
    iget-boolean v0, p0, Lcom/codemao/nemo/view/flowlayout/TagView;->isChecked:Z

    if-eq v0, p1, :cond_9

    .line 48
    iput-boolean p1, p0, Lcom/codemao/nemo/view/flowlayout/TagView;->isChecked:Z

    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    :cond_9
    return-void
.end method

.method public toggle()V
    .registers 2

    .line 68
    iget-boolean v0, p0, Lcom/codemao/nemo/view/flowlayout/TagView;->isChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/flowlayout/TagView;->setChecked(Z)V

    return-void
.end method
