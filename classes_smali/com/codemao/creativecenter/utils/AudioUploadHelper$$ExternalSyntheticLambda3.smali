.class public final synthetic Lcom/codemao/creativecenter/utils/AudioUploadHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioScanListener;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioScanListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/AudioUploadHelper$$ExternalSyntheticLambda3;->f$0:Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioScanListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/AudioUploadHelper$$ExternalSyntheticLambda3;->f$0:Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioScanListener;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/utils/AudioUploadHelper;->$r8$lambda$Z67aq1nJ5q_oAKkEoW_VY4OuSyI(Lcom/codemao/creativecenter/utils/AudioUploadHelper$AudioScanListener;Ljava/util/List;)V

    return-void
.end method
