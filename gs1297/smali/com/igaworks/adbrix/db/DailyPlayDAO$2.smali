.class Lcom/igaworks/adbrix/db/DailyPlayDAO$2;
.super Ljava/lang/Object;
.source "DailyPlayDAO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/db/DailyPlayDAO;->setLatestConversionKey(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/db/DailyPlayDAO;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$parentCK:I


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/db/DailyPlayDAO;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/db/DailyPlayDAO;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/igaworks/adbrix/db/DailyPlayDAO$2;->this$0:Lcom/igaworks/adbrix/db/DailyPlayDAO;

    iput-object p2, p0, Lcom/igaworks/adbrix/db/DailyPlayDAO$2;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/igaworks/adbrix/db/DailyPlayDAO$2;->val$parentCK:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcom/igaworks/adbrix/db/DailyPlayDAO$2;->this$0:Lcom/igaworks/adbrix/db/DailyPlayDAO;

    iget-object v2, p0, Lcom/igaworks/adbrix/db/DailyPlayDAO$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/igaworks/adbrix/db/DailyPlayDAO;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    invoke-static {v1, v2}, Lcom/igaworks/adbrix/db/DailyPlayDAO;->access$000(Lcom/igaworks/adbrix/db/DailyPlayDAO;Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, "edt":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LastConversionKey"

    iget v2, p0, Lcom/igaworks/adbrix/db/DailyPlayDAO$2;->val$parentCK:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    return-void
.end method