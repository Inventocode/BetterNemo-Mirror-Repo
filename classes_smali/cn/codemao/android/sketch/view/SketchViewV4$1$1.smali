.class Lcn/codemao/android/sketch/view/SketchViewV4$1$1;
.super Ljava/lang/Object;
.source "SketchViewV4.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/SketchViewV4$1;->process()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/codemao/android/sketch/view/SketchViewV4$1;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/SketchViewV4$1;)V
    .registers 2

    .line 1790
    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4$1$1;->this$1:Lcn/codemao/android/sketch/view/SketchViewV4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1793
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4$1$1;->this$1:Lcn/codemao/android/sketch/view/SketchViewV4$1;

    iget-object v0, v0, Lcn/codemao/android/sketch/view/SketchViewV4$1;->this$0:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
