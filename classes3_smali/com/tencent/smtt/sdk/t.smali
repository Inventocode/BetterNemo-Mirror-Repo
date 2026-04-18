.class Lcom/tencent/smtt/sdk/t;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lcom/tencent/smtt/sdk/v;

.field private c:Landroid/widget/VideoView;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/t;->d:Landroid/content/Context;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/t;->d:Landroid/content/Context;

    return-void
.end method

.method private b(Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/t;->a()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "callMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/t;->b:Lcom/tencent/smtt/sdk/v;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/t;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p0, p2}, Lcom/tencent/smtt/sdk/v;->a(Ljava/lang/Object;Landroid/os/Bundle;Landroid/widget/FrameLayout;Ljava/lang/Object;)Z

    move-result p2

    goto :goto_1c

    :cond_1b
    const/4 p2, 0x0

    :goto_1c
    if-nez p2, :cond_68

    iget-object p2, p0, Lcom/tencent/smtt/sdk/t;->c:Landroid/widget/VideoView;

    if-eqz p2, :cond_25

    invoke-virtual {p2}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_25
    iget-object p2, p0, Lcom/tencent/smtt/sdk/t;->c:Landroid/widget/VideoView;

    if-nez p2, :cond_34

    new-instance p2, Landroid/widget/VideoView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/smtt/sdk/t;->c:Landroid/widget/VideoView;

    :cond_34
    const-string p2, "videoUrl"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/t;->e:Ljava/lang/String;

    iget-object p2, p0, Lcom/tencent/smtt/sdk/t;->c:Landroid/widget/VideoView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/t;->c:Landroid/widget/VideoView;

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.tencent.smtt.tbs.video.PLAY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_68
    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/t;->b:Lcom/tencent/smtt/sdk/v;

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/smtt/sdk/f;->a(Z)Lcom/tencent/smtt/sdk/f;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/tencent/smtt/sdk/f;->a(Landroid/content/Context;ZZ)V

    invoke-static {v0}, Lcom/tencent/smtt/sdk/f;->a(Z)Lcom/tencent/smtt/sdk/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/f;->a()Lcom/tencent/smtt/sdk/u;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/u;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v1

    :cond_29
    if-eqz v1, :cond_3c

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/QbSdk;->canLoadVideo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    new-instance v0, Lcom/tencent/smtt/sdk/v;

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/v;-><init>(Lcom/tencent/smtt/export/external/DexLoader;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/t;->b:Lcom/tencent/smtt/sdk/v;

    :cond_3c
    iget-object v0, p0, Lcom/tencent/smtt/sdk/t;->b:Lcom/tencent/smtt/sdk/v;

    if-eqz v0, :cond_52

    iget-object v1, p0, Lcom/tencent/smtt/sdk/t;->a:Ljava/lang/Object;

    if-nez v1, :cond_52

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/v;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/t;->a:Ljava/lang/Object;

    :cond_52
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 5

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_53

    :cond_7
    iget-object v0, p0, Lcom/tencent/smtt/sdk/t;->c:Landroid/widget/VideoView;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_48

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/t;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/t;->c:Landroid/widget/VideoView;

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/tencent/smtt/sdk/t;->c:Landroid/widget/VideoView;

    invoke-virtual {v1, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_48
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x8

    if-lt p1, v0, :cond_53

    iget-object p1, p0, Lcom/tencent/smtt/sdk/t;->c:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    :cond_53
    :goto_53
    return-void
.end method

.method a(Landroid/app/Activity;I)V
    .registers 5

    const/4 v0, 0x3

    if-ne p2, v0, :cond_10

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/t;->c:Landroid/widget/VideoView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    :cond_10
    const/4 v0, 0x4

    if-ne p2, v0, :cond_25

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/t;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/tencent/smtt/sdk/t;->c:Landroid/widget/VideoView;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/t;->c:Landroid/widget/VideoView;

    :cond_25
    const/4 v0, 0x2

    if-ne p2, v0, :cond_33

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v0

    if-nez v0, :cond_33

    iput-object p1, p0, Lcom/tencent/smtt/sdk/t;->d:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/t;->a(Landroid/app/Activity;)V

    :cond_33
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/tencent/smtt/sdk/t;->b:Lcom/tencent/smtt/sdk/v;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/t;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/smtt/sdk/v;->a(Ljava/lang/Object;Landroid/app/Activity;I)V

    :cond_40
    return-void
.end method

.method a(Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/t;->b(Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/t;->b:Lcom/tencent/smtt/sdk/v;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/t;->a:Ljava/lang/Object;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public c()V
    .registers 3

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/smtt/sdk/t;->b:Lcom/tencent/smtt/sdk/v;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/t;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/v;->a(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6

    :try_start_0
    iget-object p1, p0, Lcom/tencent/smtt/sdk/t;->d:Landroid/content/Context;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_11

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_11

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3f

    const-string p3, "播放失败，请选择其它播放器播放"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/t;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "video/*"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_40

    :cond_3f
    return p2

    :catchall_40
    const/4 p1, 0x0

    return p1
.end method
