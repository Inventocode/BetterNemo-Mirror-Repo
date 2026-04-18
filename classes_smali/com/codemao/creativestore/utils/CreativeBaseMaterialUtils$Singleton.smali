.class Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils$Singleton;
.super Ljava/lang/Object;
.source "CreativeBaseMaterialUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static instance:Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    invoke-direct {v0}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;-><init>()V

    sput-object v0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils$Singleton;->instance:Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    return-void
.end method

.method static synthetic access$000()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;
    .registers 1

    .line 33
    sget-object v0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils$Singleton;->instance:Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    return-object v0
.end method
