.class public Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;
.super Ljava/lang/Object;
.source "CreativeThemeMaterialUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils$SingletonHoler;
    }
.end annotation


# instance fields
.field public loaclThemeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public themeAcotorStyle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorSubListBean;",
            ">;"
        }
    .end annotation
.end field

.field public themeBackgroundStyle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorSubListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->themeAcotorStyle:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->themeBackgroundStyle:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->loaclThemeIds:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;
    .registers 1

    .line 33
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils$SingletonHoler;->access$000()Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addThemeFile(Ljava/lang/String;)V
    .registers 8

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->themeAcotorStyle:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->themeBackgroundStyle:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    :try_start_e
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v4

    iget-object v4, v4, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseThemePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/actor.json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/background.json"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 120
    new-instance v2, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils$5;

    invoke-direct {v2, p0}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils$5;-><init>(Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;)V

    .line 121
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 120
    invoke-static {v3, v2}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parseThemeMaterail(Ljava/io/File;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 122
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v5, Lcom/codemao/creativecenter/event/ThemeActorMaterialUpdateEvent;

    invoke-direct {v5, p1, v2}, Lcom/codemao/creativecenter/event/ThemeActorMaterialUpdateEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3, v5}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 123
    iget-object v3, p0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->themeAcotorStyle:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 124
    iget-object v3, p0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->themeAcotorStyle:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    iget-object v2, p0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->themeAcotorStyle:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    :cond_8c
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 128
    new-instance v0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils$6;

    invoke-direct {v0, p0}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils$6;-><init>(Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;)V

    .line 129
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 128
    invoke-static {v4, v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parseThemeMaterail(Ljava/io/File;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 130
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/codemao/creativecenter/event/ThemeBgMaterialUpdateEvent;

    invoke-direct {v3, p1, v0}, Lcom/codemao/creativecenter/event/ThemeBgMaterialUpdateEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 131
    iget-object v2, p0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->themeBackgroundStyle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 132
    iget-object v2, p0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->themeBackgroundStyle:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    iget-object v0, p0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->themeBackgroundStyle:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    :cond_bc
    iget-object v0, p0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->loaclThemeIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca

    .line 136
    iget-object v0, p0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->loaclThemeIds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_ca} :catch_ca

    :catch_ca
    :cond_ca
    return-void
.end method

.method public generalThemeActorStyle()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorSubListBean;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    :try_start_5
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseThemePath:Ljava/lang/String;

    .line 70
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 73
    invoke-static {v1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->orderByDate([Ljava/io/File;)V

    .line 76
    :cond_19
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_58

    aget-object v4, v1, v3

    .line 77
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/actor.json"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 79
    new-instance v4, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils$3;

    invoke-direct {v4, p0}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils$3;-><init>(Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;)V

    .line 80
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 79
    invoke-static {v5, v4}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parseThemeMaterail(Ljava/io/File;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_51} :catch_54

    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :catch_54
    move-exception v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_58
    return-object v0
.end method

.method public generalThemeBackgroundStyle()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorSubListBean;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    :try_start_5
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseThemePath:Ljava/lang/String;

    .line 93
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 96
    invoke-static {v1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->orderByDate([Ljava/io/File;)V

    .line 98
    :cond_19
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_58

    aget-object v4, v1, v3

    .line 99
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/background.json"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 101
    new-instance v4, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils$4;

    invoke-direct {v4, p0}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils$4;-><init>(Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;)V

    .line 102
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 101
    invoke-static {v5, v4}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parseThemeMaterail(Ljava/io/File;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_51} :catch_54

    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :catch_54
    move-exception v1

    .line 106
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_58
    return-object v0
.end method

.method public initAllThemeFile()V
    .registers 8

    .line 37
    iget-object v0, p0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->themeAcotorStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    iget-object v0, p0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->themeBackgroundStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    :try_start_a
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseThemePath:Ljava/lang/String;

    .line 41
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_a9

    .line 44
    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->orderByDate([Ljava/io/File;)V

    .line 45
    array-length v1, v0

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_a9

    aget-object v3, v0, v2

    .line 46
    iget-object v4, p0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->loaclThemeIds:Ljava/util/List;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 47
    iget-object v4, p0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->loaclThemeIds:Ljava/util/List;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_39
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/actor.json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/background.json"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 52
    iget-object v3, p0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->themeAcotorStyle:Ljava/util/List;

    new-instance v6, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils$1;

    invoke-direct {v6, p0}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils$1;-><init>(Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;)V

    .line 53
    invoke-virtual {v6}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 52
    invoke-static {v4, v6}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parseThemeMaterail(Ljava/io/File;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    :cond_87
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 56
    iget-object v3, p0, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->themeBackgroundStyle:Ljava/util/List;

    new-instance v4, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils$2;

    invoke-direct {v4, p0}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils$2;-><init>(Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;)V

    .line 57
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 56
    invoke-static {v5, v4}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parseThemeMaterail(Ljava/io/File;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a1} :catch_a5

    :cond_a1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_20

    :catch_a5
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a9
    return-void
.end method
