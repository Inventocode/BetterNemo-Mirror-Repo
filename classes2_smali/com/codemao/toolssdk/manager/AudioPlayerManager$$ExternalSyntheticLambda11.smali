.class public final synthetic Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/manager/AudioPlayerManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Ljava/lang/String;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda11;->f$0:Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    iput-object p2, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda11;->f$2:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

    iput p4, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda11;->f$3:I

    iput p5, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda11;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda11;->f$0:Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    iget-object v1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda11;->f$2:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

    iget v3, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda11;->f$3:I

    iget v4, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda11;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->$r8$lambda$y1Ew2xu1Rqv9d5hfE6pfofLYTQQ(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Ljava/lang/String;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;II)V

    return-void
.end method
