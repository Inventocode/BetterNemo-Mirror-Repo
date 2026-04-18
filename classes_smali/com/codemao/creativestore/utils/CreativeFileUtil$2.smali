.class Lcom/codemao/creativestore/utils/CreativeFileUtil$2;
.super Ljava/lang/Object;
.source "CreativeFileUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/utils/CreativeFileUtil;->orderByListPostion(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/codemao/creativestore/bean/ThemeMaterialListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$ids:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    .line 439
    iput-object p1, p0, Lcom/codemao/creativestore/utils/CreativeFileUtil$2;->val$ids:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/codemao/creativestore/bean/ThemeMaterialListItem;Lcom/codemao/creativestore/bean/ThemeMaterialListItem;)I
    .registers 6

    .line 441
    iget-object v0, p0, Lcom/codemao/creativestore/utils/CreativeFileUtil$2;->val$ids:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 442
    iget-object v1, p0, Lcom/codemao/creativestore/utils/CreativeFileUtil$2;->val$ids:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getId()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-le v0, p1, :cond_38

    const/4 p1, 0x1

    return p1

    :cond_38
    if-ne v0, p1, :cond_3c

    const/4 p1, 0x0

    return p1

    :cond_3c
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 439
    check-cast p1, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    check-cast p2, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativestore/utils/CreativeFileUtil$2;->compare(Lcom/codemao/creativestore/bean/ThemeMaterialListItem;Lcom/codemao/creativestore/bean/ThemeMaterialListItem;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
