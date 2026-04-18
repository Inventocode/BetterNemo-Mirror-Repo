.class Lcn/codemao/android/sketch/xpopup/widget/LoadingView$1;
.super Ljava/lang/Object;
.source "LoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/xpopup/widget/LoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/xpopup/widget/LoadingView;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/xpopup/widget/LoadingView;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/widget/LoadingView$1;->this$0:Lcn/codemao/android/sketch/xpopup/widget/LoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 86
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/widget/LoadingView$1;->this$0:Lcn/codemao/android/sketch/xpopup/widget/LoadingView;

    iget v1, v0, Lcn/codemao/android/sketch/xpopup/widget/LoadingView;->time:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcn/codemao/android/sketch/xpopup/widget/LoadingView;->time:I

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
