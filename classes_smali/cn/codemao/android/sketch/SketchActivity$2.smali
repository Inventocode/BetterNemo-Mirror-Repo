.class Lcn/codemao/android/sketch/SketchActivity$2;
.super Ljava/lang/Object;
.source "SketchActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 420
    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$2;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x6

    if-ne p2, p1, :cond_c

    .line 424
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$2;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity;->access$600(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcn/codemao/android/sketch/utils/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    :cond_c
    const/4 p1, 0x1

    return p1
.end method
