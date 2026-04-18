.class final Lcom/codemao/creativecenter/NewBcmFragment$copyAndImportAudio$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->copyAndImportAudio(Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $audioBean$inlined:Lcom/codemao/creativecenter/bean/MaterialUploadBean;

.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$copyAndImportAudio$$inlined$let$lambda$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    iput-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment$copyAndImportAudio$$inlined$let$lambda$1;->$audioBean$inlined:Lcom/codemao/creativecenter/bean/MaterialUploadBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioMove(Z)V
    .registers 4

    .line 1962
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$copyAndImportAudio$$inlined$let$lambda$1;->$audioBean$inlined:Lcom/codemao/creativecenter/bean/MaterialUploadBean;

    iget-object v0, p1, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->audioName:Ljava/lang/String;

    .line 1963
    iget-object v1, p1, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->uuid:Ljava/lang/String;

    .line 1964
    iget-object p1, p1, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->extName:Ljava/lang/String;

    .line 1961
    invoke-static {v0, v1, p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->createUploadBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/creativestore/bean/MaterialActorBean;

    move-result-object p1

    .line 1966
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$copyAndImportAudio$$inlined$let$lambda$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/16 v1, 0x1999

    invoke-static {v0, v1, p1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$addMaterial(Lcom/codemao/creativecenter/NewBcmFragment;ILjava/util/List;)V

    return-void
.end method
