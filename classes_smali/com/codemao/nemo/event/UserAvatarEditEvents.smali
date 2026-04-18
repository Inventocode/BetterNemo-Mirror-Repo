.class public Lcom/codemao/nemo/event/UserAvatarEditEvents;
.super Ljava/lang/Object;
.source "UserAvatarEditEvents.java"


# instance fields
.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creatAvatarEditEvent(Ljava/lang/String;)Lcom/codemao/nemo/event/UserAvatarEditEvents;
    .registers 2

    .line 15
    new-instance v0, Lcom/codemao/nemo/event/UserAvatarEditEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/UserAvatarEditEvents;-><init>()V

    .line 16
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/event/UserAvatarEditEvents;->setPath(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/nemo/event/UserAvatarEditEvents;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/codemao/nemo/event/UserAvatarEditEvents;->path:Ljava/lang/String;

    return-void
.end method
