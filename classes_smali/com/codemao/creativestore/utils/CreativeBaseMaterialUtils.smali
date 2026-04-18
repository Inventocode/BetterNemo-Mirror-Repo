.class public Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;
.super Ljava/lang/Object;
.source "CreativeBaseMaterialUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils$Singleton;
    }
.end annotation


# instance fields
.field private baseBackgroundStyle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorSubListBean;",
            ">;"
        }
    .end annotation
.end field

.field private baseLocale:Ljava/util/Locale;

.field private baseSoundStyle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialSoundSubListBean;",
            ">;"
        }
    .end annotation
.end field

.field private webViewActorStyle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorListBean;",
            ">;"
        }
    .end annotation
.end field

.field private webViewBackgroundStyle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorSubListBean;",
            ">;"
        }
    .end annotation
.end field

.field private webViewLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->baseSoundStyle:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->baseBackgroundStyle:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->webViewBackgroundStyle:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->webViewActorStyle:Ljava/util/List;

    return-void
.end method

.method public static getBackgroundCloudIndex()Ljava/lang/String;
    .registers 2

    .line 42
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v0, v1, :cond_d

    const-string v0, "background_cloud_en_index.json"

    goto :goto_f

    :cond_d
    const-string v0, "background_cloud_index.json"

    :goto_f
    return-object v0
.end method

.method public static getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;
    .registers 1

    .line 38
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils$Singleton;->access$000()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getSoundCloudIndex()Ljava/lang/String;
    .registers 2

    .line 48
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v0, v1, :cond_d

    const-string v0, "sound_cloud_en_index.json"

    goto :goto_f

    :cond_d
    const-string v0, "sound_cloud_index.json"

    :goto_f
    return-object v0
.end method

.method public static getWebViewActorIndex()Ljava/lang/String;
    .registers 2

    .line 66
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->isInternational()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 67
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v0, v1, :cond_17

    const-string v0, "webview/res/actor_intl_en_index.json"

    goto :goto_19

    :cond_17
    const-string v0, "webview/res/actor_intl_index.json"

    :goto_19
    return-object v0

    .line 71
    :cond_1a
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v0, v1, :cond_27

    const-string v0, "webview/res/actor_en_index.json"

    goto :goto_29

    :cond_27
    const-string v0, "webview/res/actor_index.json"

    :goto_29
    return-object v0
.end method

.method public static getWebViewBackgroundIndex()Ljava/lang/String;
    .registers 2

    .line 54
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->isInternational()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 55
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v0, v1, :cond_17

    const-string v0, "webview/res/background_intl_en_index.json"

    goto :goto_19

    :cond_17
    const-string v0, "webview/res/background_intl_index.json"

    :goto_19
    return-object v0

    .line 59
    :cond_1a
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v0, v1, :cond_27

    const-string v0, "webview/res/background_en_index.json"

    goto :goto_29

    :cond_27
    const-string v0, "webview/res/background_index.json"

    :goto_29
    return-object v0
.end method


# virtual methods
.method public checkActorTextureExists(Ljava/lang/String;)Z
    .registers 7

    .line 173
    iget-object v0, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->webViewActorStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/MaterialActorListBean;

    .line 174
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/MaterialActorListBean;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;

    .line 175
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 176
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getUrl()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 177
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    const/4 p1, 0x1

    return p1

    :cond_56
    const/4 p1, 0x0

    return p1
.end method

.method public checkBackgroundTextureExists(Ljava/lang/String;)Z
    .registers 6

    .line 160
    iget-object v0, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->webViewBackgroundStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;

    .line 161
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 162
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getUrl()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 163
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 p1, 0x1

    return p1

    :cond_42
    const/4 p1, 0x0

    return p1
.end method

.method public generalWebViewActorStyle(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorListBean;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getWebViewActorIndex()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->readAssertResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils$4;

    invoke-direct {v1, p0}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils$4;-><init>(Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;)V

    .line 134
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 133
    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public generalWebViewBackgroundStyle(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorSubListBean;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getWebViewBackgroundIndex()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->readAssertResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils$3;

    invoke-direct {v1, p0}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils$3;-><init>(Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;)V

    .line 128
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 127
    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public generateBaseBackgroundStyle()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorSubListBean;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 151
    iget-object v2, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->baseBackgroundStyle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;

    .line 152
    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 153
    const-class v4, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;

    .line 154
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_2c
    return-object v0
.end method

.method public generateBaseSoundStyle()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialSoundSubListBean;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 140
    iget-object v2, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->baseSoundStyle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/MaterialSoundSubListBean;

    .line 141
    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 142
    const-class v4, Lcom/codemao/creativestore/bean/MaterialSoundSubListBean;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/MaterialSoundSubListBean;

    .line 143
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_2c
    return-object v0
.end method

.method public getMaterialPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 204
    :cond_8
    iget-object v0, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->webViewActorStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->webViewBackgroundStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 205
    :cond_18
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->initStyleFile(Landroid/content/Context;)V

    .line 207
    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    return-object p1

    .line 210
    :cond_30
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    return-object p1

    :cond_3d
    const-string v0, "res/drawable/default_empty_background.png"

    .line 213
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    const-string v0, "res/drawable/default_empty_background_landscape.png"

    .line 214
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    const-string v0, "res/drawable/lost_background.png"

    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    const-string v0, "res/drawable/lost_actor.png"

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 217
    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->checkActorTextureExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 218
    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->checkBackgroundTextureExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_80

    .line 221
    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativecenter/CreativeCenterUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 219
    :cond_80
    :goto_80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/webview/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initBaseCloudMaterialFile()V
    .registers 7

    .line 78
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->baseLocale:Ljava/util/Locale;

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->baseSoundStyle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1b

    iget-object v1, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->baseBackgroundStyle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1b

    return-void

    .line 81
    :cond_1b
    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->baseLocale:Ljava/util/Locale;

    .line 83
    :try_start_21
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseBasePath:Ljava/lang/String;

    .line 84
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 87
    iget-object v1, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->baseBackgroundStyle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 88
    iget-object v1, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->baseSoundStyle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 89
    array-length v1, v0

    const/4 v2, 0x0

    :goto_3e
    if-ge v2, v1, :cond_8e

    aget-object v3, v0, v2

    .line 90
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getBackgroundCloudIndex()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 91
    iget-object v4, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->baseBackgroundStyle:Ljava/util/List;

    new-instance v5, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils$1;

    invoke-direct {v5, p0}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils$1;-><init>(Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;)V

    .line 92
    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 91
    invoke-static {v3, v5}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parseThemeMaterail(Ljava/io/File;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_87

    .line 94
    :cond_65
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getSoundCloudIndex()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 95
    iget-object v4, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->baseSoundStyle:Ljava/util/List;

    new-instance v5, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils$2;

    invoke-direct {v5, p0}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils$2;-><init>(Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;)V

    .line 96
    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 95
    invoke-static {v3, v5}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parseThemeMaterail(Ljava/io/File;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_87} :catch_8a

    :cond_87
    :goto_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :catch_8a
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8e
    return-void
.end method

.method public initStyleFile(Landroid/content/Context;)V
    .registers 5

    .line 109
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->webViewLocale:Ljava/util/Locale;

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->webViewActorStyle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1b

    iget-object v1, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->webViewBackgroundStyle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1b

    return-void

    .line 112
    :cond_1b
    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->webViewLocale:Ljava/util/Locale;

    .line 114
    :try_start_21
    iget-object v0, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->webViewBackgroundStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 115
    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->generalWebViewBackgroundStyle(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->webViewBackgroundStyle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    iget-object v0, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->webViewActorStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    iget-object v0, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->webViewActorStyle:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->generalWebViewActorStyle(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    :goto_42
    invoke-virtual {p0}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->initBaseCloudMaterialFile()V

    return-void
.end method

.method public isLocalBaseMaterial(Ljava/lang/String;)Z
    .registers 4

    .line 188
    iget-object v0, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->webViewActorStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->webViewBackgroundStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_40

    .line 192
    :cond_12
    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->checkActorTextureExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 193
    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->checkBackgroundTextureExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "res/drawable/default_empty_background_landscape.png"

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "res/drawable/default_empty_background.png"

    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "res/drawable/lost_background.png"

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "res/drawable/lost_actor.png"

    .line 197
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    :cond_3e
    const/4 v1, 0x1

    :cond_3f
    return v1

    .line 189
    :cond_40
    :goto_40
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->initStyleFile(Landroid/content/Context;)V

    return v1
.end method
