.class public Lcom/codemao/creativecenter/event/ThemeActorMaterialUpdateEvent;
.super Ljava/lang/Object;
.source "ThemeActorMaterialUpdateEvent.java"


# instance fields
.field public materialActorSubListBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorSubListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorSubListBean;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/codemao/creativecenter/event/ThemeActorMaterialUpdateEvent;->materialActorSubListBeans:Ljava/util/List;

    return-void
.end method
