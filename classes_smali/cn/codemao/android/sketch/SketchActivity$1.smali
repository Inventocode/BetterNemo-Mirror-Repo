.class Lcn/codemao/android/sketch/SketchActivity$1;
.super Ljava/lang/Object;
.source "SketchActivity.java"

# interfaces
.implements Lcn/codemao/android/sketch/utils/TimerHelper$TimeProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/SketchActivity;->initViewSize()V
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

    .line 276
    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$1;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process()V
    .registers 3

    .line 279
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$1;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$400(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcn/codemao/android/sketch/SketchActivity$1$1;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/SketchActivity$1$1;-><init>(Lcn/codemao/android/sketch/SketchActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->post(Ljava/lang/Runnable;)Z

    .line 290
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$1;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$500(Lcn/codemao/android/sketch/SketchActivity;)Lcn/codemao/android/sketch/utils/TimerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/utils/TimerHelper;->stopTime()V

    return-void
.end method
