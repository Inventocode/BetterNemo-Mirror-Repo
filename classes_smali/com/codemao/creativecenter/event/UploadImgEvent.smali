.class public Lcom/codemao/creativecenter/event/UploadImgEvent;
.super Ljava/lang/Object;
.source "UploadImgEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actorBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActorBeans()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/codemao/creativecenter/event/UploadImgEvent;->actorBeans:Ljava/util/List;

    return-object v0
.end method

.method public setActorBeans(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/codemao/creativecenter/event/UploadImgEvent;->actorBeans:Ljava/util/List;

    return-void
.end method
