.class public final synthetic Lcom/codemao/creativecenter/activity/UploadAudioActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioScanListener;


# instance fields
.field public final synthetic f$0:Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadAudioActivity$$ExternalSyntheticLambda5;->f$0:Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;

    return-void
.end method


# virtual methods
.method public final onAudioScan(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadAudioActivity$$ExternalSyntheticLambda5;->f$0:Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/adpater/MaterialUploadAdapter;->setData(Ljava/util/List;)V

    return-void
.end method
