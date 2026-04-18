.class public Lcom/codemao/creativestore/bean/DefaultBcm;
.super Ljava/lang/Object;
.source "DefaultBcm.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultBcm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 8

    .line 11
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_default_work_name:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_default_bg_name:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const-string v2, "\",\n  \"app_version\": \"2.3.0\",\n  \"actors\": {\n    \"current_actor\": \"\",\n    \"actors_dict\": {}\n  },\n  \"scenes\": {\n    \"current_scene\": \"700824a5-44a8-4d03-a7e8-aa95d87e9b2a\",\n    \"scenes_order\": [\"700824a5-44a8-4d03-a7e8-aa95d87e9b2a\"],\n    \"scenes_dict\": {\n      \"700824a5-44a8-4d03-a7e8-aa95d87e9b2a\": {\n        \"id\": \"700824a5-44a8-4d03-a7e8-aa95d87e9b2a\",\n        \"current_style_id\": \"623b814d-52e2-4971-8dca-7586d2a385c2\",\n        \"name\": \""

    const-string v3, "{\n  \"project_name\": \""

    if-eqz p3, :cond_49

    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\n        \"styles\": [\"623b814d-52e2-4971-8dca-7586d2a385c2\"],\n        \"actors\": [],\n        \"visible\": true,\n        \"blocksXML\": \"<variables><variable type=\\\"\\\" id=\\\"5ZCjqB*)s:;oCyRK-ghp\\\">?</variable></variables>\"\n      }\n    }\n  },\n  \"styles\": {\n    \"styles_dict\": {\n      \"623b814d-52e2-4971-8dca-7586d2a385c2\": {\n        \"id\": \"623b814d-52e2-4971-8dca-7586d2a385c2\",\n        \"texture\": \"res/drawable/default_empty_background_landscape.png\",\n        \"name\": \""

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"\n      }\n    }\n  },\n  \"variable\": {\n    \"variable_dict\": {}\n  },\n  \"audios\": {\n    \"sounds\": {}\n  },\n  \"broadcast\": {\n    \"broadcast_dict\": {}\n  },\n  \"stage_size\": {\n    \"width\": 900,\n    \"height\": 562\n  }\n}\n"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_6b

    .line 61
    :cond_49
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\n        \"styles\": [\"623b814d-52e2-4971-8dca-7586d2a385c2\"],\n        \"actors\": [],\n        \"visible\": true,\n        \"blocksXML\": \"<variables><variable type=\\\"\\\" id=\\\"5ZCjqB*)s:;oCyRK-ghp\\\">?</variable></variables>\"\n      }\n    }\n  },\n  \"styles\": {\n    \"styles_dict\": {\n      \"623b814d-52e2-4971-8dca-7586d2a385c2\": {\n        \"id\": \"623b814d-52e2-4971-8dca-7586d2a385c2\",\n        \"texture\": \"res/drawable/default_empty_background.png\",\n        \"name\": \""

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"\n      }\n    }\n  },\n  \"variable\": {\n    \"variable_dict\": {}\n  },\n  \"audios\": {\n    \"sounds\": {}\n  },\n  \"broadcast\": {\n    \"broadcast_dict\": {}\n  },\n  \"stage_size\": {\n    \"width\": 562,\n    \"height\": 900\n  }\n}\n"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 107
    :goto_6b
    invoke-virtual {p3, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
