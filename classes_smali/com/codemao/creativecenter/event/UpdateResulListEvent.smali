.class public Lcom/codemao/creativecenter/event/UpdateResulListEvent;
.super Ljava/lang/Object;
.source "UpdateResulListEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/codemao/creativecenter/event/UpdateResulListEvent;->result:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getResult()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/codemao/creativecenter/event/UpdateResulListEvent;->result:Ljava/util/ArrayList;

    return-object v0
.end method
