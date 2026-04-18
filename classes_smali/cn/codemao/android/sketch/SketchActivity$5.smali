.class Lcn/codemao/android/sketch/SketchActivity$5;
.super Ljava/lang/Object;
.source "SketchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/SketchActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/SketchActivity;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/SketchActivity;)V
    .registers 2

    .line 472
    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$5;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 475
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$5;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcn/codemao/android/sketch/SketchActivity;->access$2002(Lcn/codemao/android/sketch/SketchActivity;I)I

    .line 476
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$5;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity;->access$2100(Lcn/codemao/android/sketch/SketchActivity;)Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$5;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$2000(Lcn/codemao/android/sketch/SketchActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setSelectPosition(I)V

    .line 477
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$5;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget-object v0, p1, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity;->access$1700(Lcn/codemao/android/sketch/SketchActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity$5;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v1}, Lcn/codemao/android/sketch/SketchActivity;->access$2000(Lcn/codemao/android/sketch/SketchActivity;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setFigureColor(I)V

    return-void
.end method
