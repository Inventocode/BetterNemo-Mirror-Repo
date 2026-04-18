.class public final synthetic Lcom/codemao/creativecenter/activity/UploadAudioActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioMoveListener;


# instance fields
.field public final synthetic f$0:Lcom/codemao/creativecenter/activity/UploadAudioActivity;

.field public final synthetic f$1:Lcom/codemao/creativecenter/bean/MaterialUploadBean;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/creativecenter/activity/UploadAudioActivity;Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadAudioActivity$$ExternalSyntheticLambda3;->f$0:Lcom/codemao/creativecenter/activity/UploadAudioActivity;

    iput-object p2, p0, Lcom/codemao/creativecenter/activity/UploadAudioActivity$$ExternalSyntheticLambda3;->f$1:Lcom/codemao/creativecenter/bean/MaterialUploadBean;

    return-void
.end method


# virtual methods
.method public final onAudioMove(Z)V
    .registers 4

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadAudioActivity$$ExternalSyntheticLambda3;->f$0:Lcom/codemao/creativecenter/activity/UploadAudioActivity;

    iget-object v1, p0, Lcom/codemao/creativecenter/activity/UploadAudioActivity$$ExternalSyntheticLambda3;->f$1:Lcom/codemao/creativecenter/bean/MaterialUploadBean;

    invoke-static {v0, v1, p1}, Lcom/codemao/creativecenter/activity/UploadAudioActivity;->$r8$lambda$fTlJKc72VC_JMfp2RwsdJuQMmRo(Lcom/codemao/creativecenter/activity/UploadAudioActivity;Lcom/codemao/creativecenter/bean/MaterialUploadBean;Z)V

    return-void
.end method
