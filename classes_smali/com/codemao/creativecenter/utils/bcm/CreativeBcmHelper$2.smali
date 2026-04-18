.class Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$2;
.super Ljava/lang/Object;
.source "CreativeBcmHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->loadBcmByAssets(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)I
    .registers 6

    .line 441
    iget-wide v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    iget-wide p1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, -0x1

    :goto_b
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 438
    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    check-cast p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$2;->compare(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)I

    move-result p1

    return p1
.end method
