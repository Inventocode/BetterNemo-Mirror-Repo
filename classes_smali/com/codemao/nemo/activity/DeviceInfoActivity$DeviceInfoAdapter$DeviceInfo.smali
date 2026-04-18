.class public final Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceInfo"
.end annotation


# instance fields
.field private final content:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;

    iget-object v1, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;->content:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;->content:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getContent()Ljava/lang/String;
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;->content:Ljava/lang/String;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$DeviceInfoAdapter$DeviceInfo;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
