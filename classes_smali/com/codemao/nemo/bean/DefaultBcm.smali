.class public Lcom/codemao/nemo/bean/DefaultBcm;
.super Ljava/lang/Object;
.source "DefaultBcm.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private defaultBcm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "{\"project_name\":\"新的作品\",\"app_version\":\"2.3.0\",\"actors\":{\"current_actor\":\"\",\"actors_dict\":{}},\"scenes\":{\"current_scene\":\"700824a5-44a8-4d03-a7e8-aa95d87e9b2a\",\"scenes_order\":[\"700824a5-44a8-4d03-a7e8-aa95d87e9b2a\"],\"scenes_dict\":{\"700824a5-44a8-4d03-a7e8-aa95d87e9b2a\":{\"id\":\"700824a5-44a8-4d03-a7e8-aa95d87e9b2a\",\"current_style_id\":\"623b814d-52e2-4971-8dca-7586d2a385c2\",\"name\":\"背景\",\"styles\":[\"623b814d-52e2-4971-8dca-7586d2a385c2\"],\"actors\":[],\"visible\":true,\"blocksXML\":\"<variables><variable type=\\\"\\\" id=\\\"5ZCjqB*)s:;oCyRK-ghp\\\">?</variable></variables>\"}}},\"styles\":{\"styles_dict\":{\"623b814d-52e2-4971-8dca-7586d2a385c2\":{\"id\":\"623b814d-52e2-4971-8dca-7586d2a385c2\",\"texture\":\"res/drawable/default_empty_background.png\",\"name\":\"背景\"}}},\"variable\":{\"variable_dict\":{}},\"audios\":{\"sounds\":{}},\"broadcast\":{\"broadcast_dict\":{}}}"

    .line 8
    iput-object v0, p0, Lcom/codemao/nemo/bean/DefaultBcm;->defaultBcm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefaultBcm()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/nemo/bean/DefaultBcm;->defaultBcm:Ljava/lang/String;

    return-object v0
.end method

.method public setDefaultBcm(Ljava/lang/String;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/codemao/nemo/bean/DefaultBcm;->defaultBcm:Ljava/lang/String;

    return-void
.end method
