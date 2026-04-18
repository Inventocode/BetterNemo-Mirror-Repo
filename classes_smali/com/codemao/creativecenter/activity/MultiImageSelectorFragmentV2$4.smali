.class Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$4;
.super Ljava/lang/Object;
.source "MultiImageSelectorFragmentV2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->requestPermission(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

.field final synthetic val$permission:Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;Ljava/lang/String;I)V
    .registers 4

    .line 338
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$4;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    iput-object p2, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$4;->val$permission:Ljava/lang/String;

    iput p3, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$4;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 341
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$4;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$4;->val$permission:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget v0, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2$4;->val$requestCode:I

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
