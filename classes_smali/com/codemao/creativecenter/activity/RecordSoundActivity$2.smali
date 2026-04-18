.class Lcom/codemao/creativecenter/activity/RecordSoundActivity$2;
.super Ljava/lang/Object;
.source "RecordSoundActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/RecordSoundActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/RecordSoundActivity;

.field final synthetic val$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/RecordSoundActivity;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V
    .registers 3

    .line 209
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity$2;->this$0:Lcom/codemao/creativecenter/activity/RecordSoundActivity;

    iput-object p2, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity$2;->val$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 212
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity$2;->val$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 213
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v0, "录音页"

    const-string/jumbo v1, "录音-取消"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 214
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity$2;->this$0:Lcom/codemao/creativecenter/activity/RecordSoundActivity;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->finish()V

    return-void
.end method
