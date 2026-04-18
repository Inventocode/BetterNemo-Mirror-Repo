.class public final Lcom/codemao/creativecenter/customview/CreationRootLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "CreationRootLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/customview/CreationRootLayout$DispatchTouchListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/codemao/creativecenter/customview/CreationRootLayout$DispatchTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 25
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreationRootLayout;->listener:Lcom/codemao/creativecenter/customview/CreationRootLayout$DispatchTouchListener;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/customview/CreationRootLayout$DispatchTouchListener;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    return v1

    .line 28
    :cond_c
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final getListener()Lcom/codemao/creativecenter/customview/CreationRootLayout$DispatchTouchListener;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreationRootLayout;->listener:Lcom/codemao/creativecenter/customview/CreationRootLayout$DispatchTouchListener;

    return-object v0
.end method

.method public final setListener(Lcom/codemao/creativecenter/customview/CreationRootLayout$DispatchTouchListener;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreationRootLayout;->listener:Lcom/codemao/creativecenter/customview/CreationRootLayout$DispatchTouchListener;

    return-void
.end method
