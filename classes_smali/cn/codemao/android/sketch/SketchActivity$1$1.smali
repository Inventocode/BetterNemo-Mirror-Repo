.class Lcn/codemao/android/sketch/SketchActivity$1$1;
.super Ljava/lang/Object;
.source "SketchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/SketchActivity$1;->process()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/codemao/android/sketch/SketchActivity$1;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/SketchActivity$1;)V
    .registers 2

    .line 279
    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$1$1;->this$1:Lcn/codemao/android/sketch/SketchActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 282
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$1$1;->this$1:Lcn/codemao/android/sketch/SketchActivity$1;

    iget-object v0, v0, Lcn/codemao/android/sketch/SketchActivity$1;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget-object v0, v0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setCanTouch(Z)V

    .line 283
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$1$1;->this$1:Lcn/codemao/android/sketch/SketchActivity$1;

    iget-object v0, v0, Lcn/codemao/android/sketch/SketchActivity$1;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$000(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 284
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$1$1;->this$1:Lcn/codemao/android/sketch/SketchActivity$1;

    iget-object v0, v0, Lcn/codemao/android/sketch/SketchActivity$1;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$100(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 285
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$1$1;->this$1:Lcn/codemao/android/sketch/SketchActivity$1;

    iget-object v0, v0, Lcn/codemao/android/sketch/SketchActivity$1;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$200(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 286
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$1$1;->this$1:Lcn/codemao/android/sketch/SketchActivity$1;

    iget-object v0, v0, Lcn/codemao/android/sketch/SketchActivity$1;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$300(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 287
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$1$1;->this$1:Lcn/codemao/android/sketch/SketchActivity$1;

    iget-object v0, v0, Lcn/codemao/android/sketch/SketchActivity$1;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$400(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    return-void
.end method
