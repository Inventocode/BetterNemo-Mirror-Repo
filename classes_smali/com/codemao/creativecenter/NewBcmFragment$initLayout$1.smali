.class final Lcom/codemao/creativecenter/NewBcmFragment$initLayout$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$initLayout$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;)V
    .registers 5

    const-string v0, "notchScreenInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 340
    sput v0, Lcom/codemao/creativestore/CreativeStoreConstants;->NOTCHMARGIN:I

    .line 342
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$initLayout$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    iget-boolean v2, p1, Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;->hasNotch:Z

    if-eqz v2, :cond_14

    iget-object v2, p1, Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-static {v1, v2}, Lcom/codemao/creativecenter/NewBcmFragment;->access$setHasNotch$p(Lcom/codemao/creativecenter/NewBcmFragment;Z)V

    .line 343
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$initLayout$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getHasNotch$p(Lcom/codemao/creativecenter/NewBcmFragment;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 344
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6a

    .line 345
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$initLayout$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v1, p1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$setNotchMargin$p(Lcom/codemao/creativecenter/NewBcmFragment;I)V

    .line 346
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$initLayout$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getNotchMargin$p(Lcom/codemao/creativecenter/NewBcmFragment;)I

    move-result p1

    sput p1, Lcom/codemao/creativestore/CreativeStoreConstants;->NOTCHMARGIN:I

    .line 347
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$initLayout$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getNotchMargin$p(Lcom/codemao/creativecenter/NewBcmFragment;)I

    move-result p1

    sput p1, Lcn/codemao/android/sketch/SketchActivity2;->NOTCHMARGIN:I

    .line 348
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$initLayout$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6a

    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$initLayout$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getNotchMargin$p(Lcom/codemao/creativecenter/NewBcmFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/codemao/creativecenter/NewBcmFragment$initLayout$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v2}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getNotchMargin$p(Lcom/codemao/creativecenter/NewBcmFragment;)I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_6a
    return-void
.end method
