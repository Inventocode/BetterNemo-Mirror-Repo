.class public Lcom/efs/sdk/base/protocol/file/EfsTextFile;
.super Lcom/efs/sdk/base/protocol/file/AbsFileLog;
.source "SourceFile"


# static fields
.field private static final FILE_START:Ljava/lang/String; = "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***"

.field private static final SECTION_START:Ljava/lang/String; = "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---"


# instance fields
.field private mHasInitLinkInfo:Z

.field private mLinkID:Ljava/lang/String;

.field private mLinkKey:Ljava/lang/String;

.field private sectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/efs/sdk/base/protocol/file/section/AbsSection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/efs/sdk/base/protocol/file/AbsFileLog;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->sectionList:Ljava/util/List;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mLinkKey:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mLinkID:Ljava/lang/String;

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mHasInitLinkInfo:Z

    return-void
.end method

.method private changeToStr()Ljava/lang/String;
    .registers 6

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->sectionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/efs/sdk/base/protocol/file/section/AbsSection;

    if-lez v2, :cond_26

    const-string v4, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    .line 66
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_26
    invoke-virtual {v3}, Lcom/efs/sdk/base/protocol/file/section/AbsSection;->changeToStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 71
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initLinkInfo()V
    .registers 5

    .line 165
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mLinkID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mLinkKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 169
    :cond_11
    iget-boolean v0, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mHasInitLinkInfo:Z

    if-eqz v0, :cond_16

    return-void

    .line 173
    :cond_16
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->sectionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/efs/sdk/base/protocol/file/section/AbsSection;

    .line 174
    instance-of v2, v1, Lcom/efs/sdk/base/protocol/file/section/KVSection;

    if-eqz v2, :cond_1c

    .line 178
    check-cast v1, Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 180
    invoke-virtual {v1}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->getDataMap()Ljava/util/Map;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mLinkID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string v2, "w_frmid"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 184
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mLinkID:Ljava/lang/String;

    .line 188
    :cond_4c
    iget-object v2, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mLinkKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "w_linkKey"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 189
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mLinkKey:Ljava/lang/String;

    goto :goto_1c

    :cond_67
    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mHasInitLinkInfo:Z

    return-void
.end method

.method private insertCustomInfoSection()V
    .registers 5

    .line 124
    new-instance v0, Lcom/efs/sdk/base/protocol/file/section/KVSection;

    const-string v1, "custom_info"

    invoke-direct {v0, v1}, Lcom/efs/sdk/base/protocol/file/section/KVSection;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/efs/sdk/base/a/c/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    goto :goto_17

    .line 129
    :cond_31
    iget-object v1, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->sectionList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createAndAddJSONSection(Ljava/lang/String;)Lcom/efs/sdk/base/protocol/file/section/JSONSection;
    .registers 3

    .line 106
    new-instance v0, Lcom/efs/sdk/base/protocol/file/section/JSONSection;

    invoke-direct {v0, p1}, Lcom/efs/sdk/base/protocol/file/section/JSONSection;-><init>(Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->sectionList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createAndAddKVSection(Ljava/lang/String;)Lcom/efs/sdk/base/protocol/file/section/KVSection;
    .registers 3

    .line 81
    new-instance v0, Lcom/efs/sdk/base/protocol/file/section/KVSection;

    invoke-direct {v0, p1}, Lcom/efs/sdk/base/protocol/file/section/KVSection;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->sectionList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createAndAddTextSection(Ljava/lang/String;)Lcom/efs/sdk/base/protocol/file/section/TextSection;
    .registers 3

    .line 93
    new-instance v0, Lcom/efs/sdk/base/protocol/file/section/TextSection;

    invoke-direct {v0, p1}, Lcom/efs/sdk/base/protocol/file/section/TextSection;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->sectionList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public generate()[B
    .registers 3

    .line 139
    invoke-direct {p0}, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->changeToStr()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    .line 2216
    iget-boolean v1, v1, Lcom/efs/sdk/base/a/c/a;->g:Z

    if-eqz v1, :cond_11

    const-string v1, "efs.base"

    .line 3024
    invoke-static {v1, v0}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public generateString()Ljava/lang/String;
    .registers 2

    .line 149
    invoke-direct {p0}, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->changeToStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkId()Ljava/lang/String;
    .registers 2

    .line 160
    invoke-direct {p0}, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->initLinkInfo()V

    .line 161
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mLinkID:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkKey()Ljava/lang/String;
    .registers 2

    .line 154
    invoke-direct {p0}, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->initLinkInfo()V

    .line 155
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->mLinkKey:Ljava/lang/String;

    return-object v0
.end method

.method public insertGlobal(Lcom/efs/sdk/base/a/c/b;)V
    .registers 10

    .line 118
    invoke-direct {p0}, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->insertCustomInfoSection()V

    .line 119
    iget-object v0, p0, Lcom/efs/sdk/base/protocol/file/EfsTextFile;->sectionList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/efs/sdk/base/protocol/AbsLog;->getLogType()Ljava/lang/String;

    move-result-object v1

    .line 1184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1187
    new-instance v3, Lcom/efs/sdk/base/protocol/file/section/KVSection;

    const-string v4, "global_head"

    invoke-direct {v3, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;-><init>(Ljava/lang/String;)V

    const-string v4, "type"

    .line 1188
    invoke-virtual {v3, v4, v1}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object v1

    iget-object v4, p1, Lcom/efs/sdk/base/a/c/b;->a:Ljava/util/Map;

    const-string v5, "appid"

    .line 1189
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object v1

    iget-object v4, p1, Lcom/efs/sdk/base/a/c/b;->a:Ljava/util/Map;

    const-string v5, "wid"

    .line 1190
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object v1

    iget-object v4, p1, Lcom/efs/sdk/base/a/c/b;->a:Ljava/util/Map;

    const-string v5, "pid"

    .line 1191
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object v1

    iget-object v4, p1, Lcom/efs/sdk/base/a/c/b;->a:Ljava/util/Map;

    const-string v5, "pkg"

    .line 1192
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object v1

    iget-object v4, p1, Lcom/efs/sdk/base/a/c/b;->a:Ljava/util/Map;

    const-string v5, "ver"

    .line 1193
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object v1

    iget-object v4, p1, Lcom/efs/sdk/base/a/c/b;->a:Ljava/util/Map;

    const-string v5, "vcode"

    .line 1194
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object v1

    iget-object v4, p1, Lcom/efs/sdk/base/a/c/b;->a:Ljava/util/Map;

    const-string v5, "ps"

    .line 1195
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object v1

    iget-object v4, p1, Lcom/efs/sdk/base/a/c/b;->a:Ljava/util/Map;

    const-string v5, "stime"

    .line 1196
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object v1

    .line 1197
    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->a()Lcom/efs/sdk/base/a/a/a;

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "ctime"

    invoke-virtual {v1, v5, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object v1

    .line 1198
    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->a()Lcom/efs/sdk/base/a/a/a;

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->b()J

    move-result-wide v4

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "w_tm"

    invoke-virtual {v1, v5, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object v1

    iget-object v4, p1, Lcom/efs/sdk/base/a/c/b;->a:Ljava/util/Map;

    const-string v5, "sdk_ver"

    .line 1199
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    const-string v1, "uid"

    const-string v4, ""

    .line 1201
    invoke-virtual {p1, v1, v4}, Lcom/efs/sdk/base/a/c/b;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1203
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c1

    .line 1204
    invoke-virtual {v3, v1, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 1206
    :cond_c1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1209
    new-instance v1, Lcom/efs/sdk/base/protocol/file/section/KVSection;

    const-string v3, "device_info"

    invoke-direct {v1, v3}, Lcom/efs/sdk/base/protocol/file/section/KVSection;-><init>(Ljava/lang/String;)V

    .line 1210
    iget-object v3, p1, Lcom/efs/sdk/base/a/c/b;->a:Ljava/util/Map;

    const-string v4, "lang"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object v3

    iget-object v4, p1, Lcom/efs/sdk/base/a/c/b;->a:Ljava/util/Map;

    const-string v5, "brand"

    .line 1211
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object v3

    iget-object v4, p1, Lcom/efs/sdk/base/a/c/b;->a:Ljava/util/Map;

    const-string v5, "model"

    .line 1212
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object v3

    iget-object v4, p1, Lcom/efs/sdk/base/a/c/b;->a:Ljava/util/Map;

    const-string v5, "rom"

    .line 1213
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object v3

    iget-object v4, p1, Lcom/efs/sdk/base/a/c/b;->a:Ljava/util/Map;

    const-string v5, "sdk"

    .line 1214
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object v3

    iget-object v4, p1, Lcom/efs/sdk/base/a/c/b;->a:Ljava/util/Map;

    const-string v5, "dsp_h"

    .line 1215
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object v3

    iget-object v4, p1, Lcom/efs/sdk/base/a/c/b;->a:Ljava/util/Map;

    const-string v5, "dsp_w"

    .line 1216
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object v3

    iget-object v4, p1, Lcom/efs/sdk/base/a/c/b;->a:Ljava/util/Map;

    const-string v5, "tzone"

    .line 1217
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object v3

    iget-object v4, p1, Lcom/efs/sdk/base/a/c/b;->a:Ljava/util/Map;

    const-string v5, "net"

    .line 1218
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    move-result-object v3

    iget-object p1, p1, Lcom/efs/sdk/base/a/c/b;->a:Ljava/util/Map;

    const-string v4, "fr"

    .line 1219
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lcom/efs/sdk/base/protocol/file/section/KVSection;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/efs/sdk/base/protocol/file/section/KVSection;

    .line 1220
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 119
    invoke-interface {v0, p1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void
.end method
