.class public Lcom/codemao/creativecenter/activity/ImportAudioActivity;
.super Lcom/nemo/commonui/BaseNemoUIActivity;
.source "ImportAudioActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/nemo/commonui/BaseNemoUIActivity;-><init>()V

    return-void
.end method

.method private getMaterialUpload()Lcom/codemao/creativecenter/bean/MaterialUploadBean;
    .registers 10

    const-string v0, ""

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b0

    .line 70
    :try_start_9
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 73
    invoke-static {p0, v3}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v4

    goto :goto_15

    :cond_14
    move-object v4, v2

    :goto_15
    if-eqz v4, :cond_1c

    .line 75
    invoke-virtual {v4}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_22

    :cond_1c
    sget v5, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_upload_audio:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 76
    :goto_22
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 77
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 79
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_42

    .line 81
    :cond_3c
    sget v5, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_upload_audio:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_42
    :goto_42
    if-eqz v4, :cond_49

    .line 84
    invoke-virtual {v4}, Landroidx/documentfile/provider/DocumentFile;->length()J

    move-result-wide v6

    goto :goto_4b

    :cond_49
    const-wide/16 v6, 0x0

    :goto_4b
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 85
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a8

    .line 86
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "audio/mpeg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_5f} :catch_b0

    const-string v7, "mp3"

    if-eqz v6, :cond_70

    :try_start_63
    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 87
    new-instance v1, Lcom/codemao/creativecenter/bean/MaterialUploadBean;

    invoke-direct {v1, v5, v7, v3, v4}, Lcom/codemao/creativecenter/bean/MaterialUploadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Long;)V

    :goto_6e
    move-object v2, v1

    goto :goto_a8

    .line 88
    :cond_70
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v8, "audio/aac"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_7a} :catch_b0

    const-string v8, "aac"

    if-eqz v6, :cond_84

    .line 89
    :try_start_7e
    new-instance v1, Lcom/codemao/creativecenter/bean/MaterialUploadBean;

    invoke-direct {v1, v5, v8, v3, v4}, Lcom/codemao/creativecenter/bean/MaterialUploadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Long;)V

    goto :goto_6e

    .line 90
    :cond_84
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v6, "audio/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 91
    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 92
    new-instance v1, Lcom/codemao/creativecenter/bean/MaterialUploadBean;

    invoke-direct {v1, v5, v7, v3, v4}, Lcom/codemao/creativecenter/bean/MaterialUploadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Long;)V

    goto :goto_6e

    .line 93
    :cond_9c
    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 94
    new-instance v1, Lcom/codemao/creativecenter/bean/MaterialUploadBean;

    invoke-direct {v1, v5, v8, v3, v4}, Lcom/codemao/creativecenter/bean/MaterialUploadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Long;)V

    goto :goto_6e

    :cond_a8
    :goto_a8
    if-nez v2, :cond_b0

    .line 100
    new-instance v1, Lcom/codemao/creativecenter/bean/MaterialUploadBean;

    invoke-direct {v1, v0, v0, v3, v4}, Lcom/codemao/creativecenter/bean/MaterialUploadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Long;)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_af} :catch_b0

    return-object v1

    :catch_b0
    :cond_b0
    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 31
    invoke-super {p0, p1}, Lcom/nemo/commonui/BaseNemoUIActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 34
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->get()Lcom/codemao/creativecenter/utils/CreativeActivityUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->getSecondLastActivity()Landroid/app/Activity;

    move-result-object p1

    .line 35
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->get()Lcom/codemao/creativecenter/utils/CreativeActivityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/CreativeActivityUtils;->isInCreateCenter()Z

    move-result v0

    if-eqz p1, :cond_71

    .line 37
    instance-of v1, p1, Lcom/codemao/creativecenter/callback/CreativeLocalAudioMoveInterface;

    if-eqz v1, :cond_5b

    .line 38
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/ImportAudioActivity;->getMaterialUpload()Lcom/codemao/creativecenter/bean/MaterialUploadBean;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 39
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/ImportAudioActivity;->getMaterialUpload()Lcom/codemao/creativecenter/bean/MaterialUploadBean;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/bean/MaterialUploadBean;->audioSize:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x500000

    cmp-long v4, v0, v2

    if-gez v4, :cond_51

    .line 41
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/ImportAudioActivity;->getMaterialUpload()Lcom/codemao/creativecenter/bean/MaterialUploadBean;

    move-result-object v0

    if-nez v0, :cond_4b

    .line 43
    sget p1, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_import_fail:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 47
    :cond_4b
    check-cast p1, Lcom/codemao/creativecenter/callback/CreativeLocalAudioMoveInterface;

    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/callback/CreativeLocalAudioMoveInterface;->copyAndImportAudio(Lcom/codemao/creativecenter/bean/MaterialUploadBean;)V

    goto :goto_7a

    .line 49
    :cond_51
    sget p1, Lcom/codemao/creativecenter/R$string;->creative_nemo_limit_size:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_7a

    :cond_5b
    if-eqz v0, :cond_67

    .line 54
    sget p1, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_import_tip:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_7a

    .line 56
    :cond_67
    sget p1, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_imort_mot_in_ide:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_7a

    .line 60
    :cond_71
    sget p1, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_import_tip:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 62
    :cond_7a
    :goto_7a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
