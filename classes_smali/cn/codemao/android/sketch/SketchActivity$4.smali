.class Lcn/codemao/android/sketch/SketchActivity$4;
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

    .line 461
    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$4;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 464
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$4;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcn/codemao/android/sketch/SketchActivity;->access$1502(Lcn/codemao/android/sketch/SketchActivity;I)I

    .line 465
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$4;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity;->access$1600(Lcn/codemao/android/sketch/SketchActivity;)Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$4;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$1500(Lcn/codemao/android/sketch/SketchActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/adapter/ColorSelectAdapter;->setSelectPosition(I)V

    .line 466
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$4;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget-object v0, p1, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity;->access$1700(Lcn/codemao/android/sketch/SketchActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity$4;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v1}, Lcn/codemao/android/sketch/SketchActivity;->access$1500(Lcn/codemao/android/sketch/SketchActivity;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setPaintColor(I)V

    .line 467
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$4;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget-object p1, p1, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->setPaintType(I)V

    .line 468
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$4;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity;->access$1800(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcn/codemao/android/sketch/R$mipmap;->icn_eraser_nor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 469
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$4;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity;->access$1900(Lcn/codemao/android/sketch/SketchActivity;)V

    return-void
.end method
