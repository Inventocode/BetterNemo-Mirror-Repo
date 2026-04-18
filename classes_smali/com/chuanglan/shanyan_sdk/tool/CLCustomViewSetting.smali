.class public Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Landroid/view/View;

.field private l:Lcom/chuanglan/shanyan_sdk/listener/ShanYanCustomInterface;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->a:I

    iput v0, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->b:I

    iput v0, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->c:I

    iput v0, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->d:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->e:I

    iput v1, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->f:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->g:I

    const/16 v1, 0xe

    iput v1, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->h:I

    iput-boolean v0, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->i:Z

    iput-boolean v0, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->k:Landroid/view/View;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->l:Lcom/chuanglan/shanyan_sdk/listener/ShanYanCustomInterface;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->f:I

    return v0
.end method

.method public getHorizontalRule()I
    .registers 2

    iget v0, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->h:I

    return v0
.end method

.method public getMarginBottom()I
    .registers 2

    iget v0, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->d:I

    return v0
.end method

.method public getMarginLeft()I
    .registers 2

    iget v0, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->a:I

    return v0
.end method

.method public getMarginRight()I
    .registers 2

    iget v0, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->b:I

    return v0
.end method

.method public getMarginTop()I
    .registers 2

    iget v0, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->c:I

    return v0
.end method

.method public getShanYanCustomInterface()Lcom/chuanglan/shanyan_sdk/listener/ShanYanCustomInterface;
    .registers 2

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->l:Lcom/chuanglan/shanyan_sdk/listener/ShanYanCustomInterface;

    return-object v0
.end method

.method public getType()Z
    .registers 2

    iget-boolean v0, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->j:Z

    return v0
.end method

.method public getVerticalRule()I
    .registers 2

    iget v0, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->g:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->k:Landroid/view/View;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->e:I

    return v0
.end method

.method public isFinish()Z
    .registers 2

    iget-boolean v0, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->i:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLCustomViewSetting{marginLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", marginRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", marginTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", marginBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", verticalRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", horizontalRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFinish="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shanYanCustomInterface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->l:Lcom/chuanglan/shanyan_sdk/listener/ShanYanCustomInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
