.class Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils$SingletonHoler;
.super Ljava/lang/Object;
.source "CreativeThemeMaterialUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHoler"
.end annotation


# static fields
.field private static instance:Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;

    invoke-direct {v0}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;-><init>()V

    sput-object v0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils$SingletonHoler;->instance:Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;

    return-void
.end method

.method static synthetic access$000()Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;
    .registers 1

    .line 28
    sget-object v0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils$SingletonHoler;->instance:Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;

    return-object v0
.end method
