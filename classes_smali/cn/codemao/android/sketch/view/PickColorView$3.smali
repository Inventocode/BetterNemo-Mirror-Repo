.class Lcn/codemao/android/sketch/view/PickColorView$3;
.super Ljava/lang/Object;
.source "PickColorView.java"

# interfaces
.implements Lcn/codemao/android/sketch/listener/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/PickColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/view/PickColorView;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/PickColorView;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcn/codemao/android/sketch/view/PickColorView$3;->this$0:Lcn/codemao/android/sketch/view/PickColorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .registers 4

    .line 129
    iget-object p2, p0, Lcn/codemao/android/sketch/view/PickColorView$3;->this$0:Lcn/codemao/android/sketch/view/PickColorView;

    invoke-static {p2}, Lcn/codemao/android/sketch/view/PickColorView;->access$000(Lcn/codemao/android/sketch/view/PickColorView;)Lcn/codemao/android/sketch/view/PickColorView$PickColorAction;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 130
    check-cast p1, Lcn/codemao/android/sketch/view/CircleColorView;

    .line 131
    iget-object p2, p0, Lcn/codemao/android/sketch/view/PickColorView$3;->this$0:Lcn/codemao/android/sketch/view/PickColorView;

    invoke-static {p2}, Lcn/codemao/android/sketch/view/PickColorView;->access$000(Lcn/codemao/android/sketch/view/PickColorView;)Lcn/codemao/android/sketch/view/PickColorView$PickColorAction;

    move-result-object p2

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/CircleColorView;->getColor()I

    move-result p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcn/codemao/android/sketch/view/PickColorView$PickColorAction;->onPickColor(IZ)V

    :cond_18
    return-void
.end method
