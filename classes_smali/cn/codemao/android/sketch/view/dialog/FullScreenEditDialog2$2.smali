.class Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$2;
.super Ljava/lang/Object;
.source "FullScreenEditDialog2.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$2;->this$0:Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 149
    iget-object p1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$2;->this$0:Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->access$100(Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$2;->this$0:Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;

    invoke-static {p2}, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->access$100(Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    const/4 p4, 0x0

    const/4 p6, 0x4

    if-ge p3, p2, :cond_18

    const/4 p2, 0x0

    goto :goto_19

    :cond_18
    const/4 p2, 0x4

    :goto_19
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object p1, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$2;->this$0:Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->access$300(Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$2;->this$0:Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;

    invoke-static {p2}, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->access$200(Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p2, p5

    iget-object p3, p0, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$2;->this$0:Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;

    invoke-static {p3}, Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;->access$300(Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    if-ge p2, p3, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 p4, 0x4

    :goto_3d
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
