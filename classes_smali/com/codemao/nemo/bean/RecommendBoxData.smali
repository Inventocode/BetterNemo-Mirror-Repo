.class public Lcom/codemao/nemo/bean/RecommendBoxData;
.super Ljava/lang/Object;
.source "RecommendBoxData.java"


# instance fields
.field private authorAvatar:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authorAvatar"
    .end annotation
.end field

.field private authorHomepage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authorHomepage"
    .end annotation
.end field

.field private authorName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authorName"
    .end annotation
.end field

.field private contentName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contentName"
    .end annotation
.end field

.field private contentUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contentUrl"
    .end annotation
.end field

.field private order:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order"
    .end annotation
.end field

.field private picture:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "picture"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthorAvatar()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendBoxData;->authorAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorHomepage()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendBoxData;->authorHomepage:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendBoxData;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentName()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendBoxData;->contentName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendBoxData;->contentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/codemao/nemo/bean/RecommendBoxData;->order:I

    return v0
.end method

.method public getPicture()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendBoxData;->picture:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthorAvatar(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/nemo/bean/RecommendBoxData;->authorAvatar:Ljava/lang/String;

    return-void
.end method

.method public setAuthorHomepage(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/codemao/nemo/bean/RecommendBoxData;->authorHomepage:Ljava/lang/String;

    return-void
.end method

.method public setAuthorName(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/codemao/nemo/bean/RecommendBoxData;->authorName:Ljava/lang/String;

    return-void
.end method

.method public setContentName(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/codemao/nemo/bean/RecommendBoxData;->contentName:Ljava/lang/String;

    return-void
.end method

.method public setContentUrl(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/codemao/nemo/bean/RecommendBoxData;->contentUrl:Ljava/lang/String;

    return-void
.end method

.method public setOrder(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/codemao/nemo/bean/RecommendBoxData;->order:I

    return-void
.end method

.method public setPicture(Ljava/lang/String;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/codemao/nemo/bean/RecommendBoxData;->picture:Ljava/lang/String;

    return-void
.end method
