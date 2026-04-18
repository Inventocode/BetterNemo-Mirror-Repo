.class public Lcom/codemao/nemo/bean/EventInfo;
.super Ljava/lang/Object;
.source "EventInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private eventUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jump_url"
    .end annotation
.end field

.field private preview_url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/codemao/nemo/bean/EventInfo;->eventUrl:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/codemao/nemo/bean/EventInfo;->preview_url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEventUrl()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/nemo/bean/EventInfo;->eventUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPreview_url()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/codemao/nemo/bean/EventInfo;->preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public setEventUrl(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/nemo/bean/EventInfo;->eventUrl:Ljava/lang/String;

    return-void
.end method

.method public setPreview_url(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/codemao/nemo/bean/EventInfo;->preview_url:Ljava/lang/String;

    return-void
.end method
